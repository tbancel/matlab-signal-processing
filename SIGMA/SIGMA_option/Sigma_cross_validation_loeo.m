function [scores,prediction,index_selected, ClObj] = Sigma_cross_validation_loeo(features_results,init_parameter,best_index)
%[results, results_infos, index_selected,prediction] = Sigma_cross_validation_loeo(features_results,init_parameter,best_index)
%% This function compute the crosscorrelation base on leave one epoch out
% [results, results_infos, index_selected] = Sigma_cross_validation_loeo(features,labels,maxFeatNum,classificationMethod,best_voted_index)
% Used to train the model of calassification based on the Leave One Epoch
%  Out and returns the performances measures used in the classification's
%  methods

% INPUTS: 
% features=features_results.o_features_matrix;
% labels=features_results.labels;
% maxFeatNum=init_parameter.nb_features;
% classificationMethod=init_parameter.classification_method;

% -features : the matrix of the features extracted from the data, size = NxM
% where N is the number of line, represent the number of features
% and M is the number of rows, representing the number of epochs (examples)
% - labels : is the vector of labels, -1 and 1 , related to the two classes
% of the data, the size of this vector is : Mx1
% - maxFeatNum : is the number of feature to rank, used by the
% gram_schmit_function otr the others OFR algorithm
% - classificationMethod : contain the name of the classification method,
% LDA, QDA or SVM for instance
% - best_voted_index : optional, it's a vector of index of the features to
% use, mainly is the output of the function : Sigma_election_best_index
% - best_index : Optional input, if it's included, the OFR does not used in
% this function, the selected feature will be thoese specified by this
% vector

% OUTPUTS : 
% -results : matrix contaning the differents measure of classification,
% the size of this matrix is NxR, where N is the number of the feature to
% rank, R is the number of measures computed in this script 
% -results_infos : contain the name of measured output, for now it comput
% th following measures :
% results_infos={'Auc','Accuracy', 'Sensitivity', 'Specificity', 'Precision', 'Recall', 'F-Measure', 'G-mean' };
% Where : 
% -Auc : Area under the curve : 
% accuracy = (tp+tn)/N;
% sensitivity = tp_rate;
% specificity = tn_rate;
% precision = tp/(tp+fp);
% recall = sensitivity;
% f_measure = 2*((precision*recall)/(precision + recall));
% gmean = sqrt(tp_rate*tn_rate);

% p = length of the positif example
% n = length of the negatif example
% N = p+n;
% 
% tp = sum(ACTUAL(idx)==PREDICTED(idx)); % number of the true positif
% tn = sum(ACTUAL(~idx)==PREDICTED(~idx)); %% number of the true negatif
% fp = n-tn;% number of the false positif
% fn = p-tp;% number of the false negatif
% 
% tp_rate = tp/p;
% tn_rate = tn/n;
 
%% Extract the parameters of this function
o_features_matrix=features_results.o_features_matrix;
labels=features_results.labels;
maxFeatNum=init_parameter.nb_features;
classificationMethod=init_parameter.classification_method;
ranking_method=init_parameter.ranking_method;

%% Start
display(['You have selected the :  ' classificationMethod '....'])    
epochs = size(o_features_matrix,2);
% scores = nan(maxFeatNum,epochs);
scores_nc= nan(maxFeatNum,epochs);
scores_pc= nan(maxFeatNum,epochs);

prediction = nan(maxFeatNum,epochs);

auc = nan(1,maxFeatNum);
evaluation=nan(maxFeatNum,7);

index_selected=[];

for epoch = 1:epochs


    %%% Part of feature to remove and the to test
    currFeats = o_features_matrix(:,epoch);

    %%% Part of the feature to train
    otherFeats = o_features_matrix;
    otherFeats(:,epoch) = [];
    %%% Part of the labels to train    
    otherLabels = labels;
    otherLabels(epoch) = [];

    if nargin==2
    nb_features=maxFeatNum;
        %% Running the OFR
%         if strcmp(ranking_method,'gram_schmidt') 
%             [idx_best_features,~] = gram_schmidt(o_features_matrix,labels , nb_features); % cosinus angle best ranging
%         end
% 
%         if strcmp(ranking_method, 'rankingFisher')
%             %[idx_best_features,cosines] = gram_schmidt(o_features_matrix,labels , nb_features); % cosinus angle best ranging
%             [idx_best_features,~] = rankingFisher(o_features_matrix',labels);
%             idx_best_features=idx_best_features(1:nb_features);
%         end
% 
%         if strcmp(ranking_method, 'gram_schmidt_FV')
%             [gs_rank] = gram_schmidt_FV(labels',o_features_matrix');
%             idx_best_features=gs_rank(1:nb_features,1);
%         end
% 
%         if strcmp(ranking_method, 'gs_with_probe_FV')
%             [gswp_rank, ~] = gs_with_probe_FV(labels,o_features_matrix,5);
%             idx_best_features=gswp_rank(1:nb_features);
%         end
% 
% 
%         if strcmp(ranking_method, 'MGSselec')
%             [idx_best_features] = MGSselec(labels',o_features_matrix',nb_features);
%             idx_best_features=idx_best_features(1:nb_features);
%         end

        [idx_best_features]=Sigma_ranking_methods(init_parameter,otherFeats,otherLabels,nb_features,ranking_method);

        %[idx] = gram_schmidt(otherFeats, otherLabels, maxFeatNum);
        idx=idx_best_features;
        idx=idx(:);
        index_selected=[index_selected idx(:)];

    end

    if nargin==3
        idx=best_index(:);
        index_selected=[index_selected idx];
    end

    for feat = 1:maxFeatNum
        featuresChosen = otherFeats(idx(1:feat),:);

        if(classificationMethod == 'LDA')
            %display('You have selected the : LDA Classification....')     
            classObj = fitcdiscr(featuresChosen',otherLabels');
        end

        if(classificationMethod == 'QDA')
            %display('You have selected the : QDA Classification....')     
            classObj = fitcdiscr(featuresChosen',otherLabels','DiscrimType','diagLinear');
        end

        if(classificationMethod == 'SVM')
            %display('You have selected the : SVM Classification....')     
            classObj = fitcdiscr(featuresChosen',otherLabels','KernelScale','auto','Standardize',true,'OutlierFraction',0.05);
        end

        % [~,sc] = predict(classObj,currFeats(idx(1:feat))');
        % scores(feat,epoch) = sc(2);

        [YP, sc]=predict(classObj,currFeats(idx(1:feat))');
        %scores(feat,epoch) = sc(2);
         scores_nc(feat,epoch) = sc(1); % negative classe's score
         scores_pc(feat,epoch) = sc(2); % negative classe's score
         scores={scores_nc, scores_pc};

        prediction(feat,epoch) = YP;
                %ClObj{feat}=classObj;
        ClObj(feat).classObj=classObj;



    end
end
% 
% for feat = 1:maxFeatNum
% [~,~,~,auc(feat)] = perfcurve(labels,scores(feat,:),1);
% evaluation(feat,:) = Evaluate(labels,prediction(feat,:));
% 
% results=[auc' evaluation];
% results_infos={'Auc','Accuracy', 'Sensitivity', 'Specificity', 'Precision', 'Recall', 'F-Measure', 'G-mean' };
end

%%
% % %----------------------------------------------------------------------
% % %                  Brain Computer Interface team
% % % 
% % %                            _---~~(~~-_.
% % %                          _{        )   )
% % %                        ,   ) -~~- ( ,-' )_
% % %                       (  `-,_..`., )-- '_,)
% % %                      ( ` _)  (  -~( -_ `,  }
% % %                      (_-  _  ~_-~~~~`,  ,' )
% % %                        `~ -^(    __;-,((()))
% % %                              ~~~~ {_ -_(())
% % %                                     `\  }
% % %                                       { }
% % %   File created by Takfarinas MEDANI
% % %   Creation Date : 21/06/2017
% % %   Updates and contributors :
% % %       21/06/2017 Takfarinas MEDANI
% % %       
% % %   Citation: [creator and contributor names], SigmaBOX, available 
% % %   online 2017.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2017
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------
