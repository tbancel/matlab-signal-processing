function  [scores,prediction,index_selected] = Sigma_cross_validation_loeo2(features_results,init_parameter,best_index)

%% This function compute the crosscorrelation base on leave one epoch out
% [scores,prediction,index_selected] = Sigma_cross_validation_loeo2(features_results,init_parameter,best_index)
% OR
% [scores,prediction,index_selected] = Sigma_cross_validation_loeo2(features_results,init_parameter)
% 
% INPUTS: 
% features=features_results.o_features_matrix;
% labels=features_results.labels;
% maxFeatNum=init_parameter.nb_features;
% classificationMethod=init_parameter.classification_method;
%     % -features : the matrix of the features extracted from the data, size = NxM
%     % where N is the number of line, represent the number of features
%     % and M is the number of rows, representing the number of epochs (examples)
%     % - labels : is the vector of labels, -1 and 1 , related to the two classes
%     % of the data, the size of this vector is : Mx1
%     % - maxFeatNum : is the number of feature to rank, used by the
%     % gram_schmit_function otr the others OFR algorithm
%     % - classificationMethod : contain the name of the classification method,
%     % LDA, QDA or SVM for instance
%     % - best_voted_index : optional, it's a vector of index of the features to
%     % use, mainly is the output of the function : Sigma_election_best_index
%     % - best_index : Optional input, if it's included, the OFR does not used in
%     % this function, the selected feature will be thoese specified by this
%     % vector
% OUTPUTS : 
% [scores prediction]=predict(classObj,features) ; is the output of the
% Matlab function predict for the positive classe : scores=scores(2), probabilities of the positive classe,
% index_selected : is the liste of the index selected to rank the best
% features

h = waitbar(0,'LOEO Please wait...');%%%

%% Extract the parameters of this function
o_features_matrix=features_results.o_features_matrix;
labels=features_results.labels;
maxFeatNum=init_parameter.nb_features;
classificationMethod=init_parameter.classification_method;
ranking_method=init_parameter.ranking_method;

%% Start
display('You are runing the LOEO method for training your model ... ')    
display(['You have selected the : ' ranking_method ' with ' classificationMethod '....'])    
epochs = size(o_features_matrix,2);
scores = nan(maxFeatNum,epochs);
prediction = nan(maxFeatNum,epochs);

index_selected=[];

for epoch = 1:epochs
    waitbar(epoch / epochs)%%%
    
    currFeats = o_features_matrix(:,epoch);
    otherFeats = o_features_matrix;
    otherFeats(:,epoch) = [];
    otherLabels = labels;
    otherLabels(epoch) = [];

    %% OFR Algorithmes
    nb_argin=nargin;
    if nargin==2
    nb_features=maxFeatNum;
        %% Running the OFR
        if strcmp(ranking_method,'gram_schmidt') 
            [idx_best_features,~] = gram_schmidt(otherFeats,otherLabels , nb_features); % cosinus angle best ranging
        end

        if strcmp(ranking_method, 'rankingFisher')
            %[idx_best_features,cosines] = gram_schmidt(o_features_matrix,labels , nb_features); % cosinus angle best ranging
            [idx_best_features,~] = rankingFisher(otherFeats',otherLabels);
            idx_best_features=idx_best_features(1:nb_features);
        end

        if strcmp(ranking_method, 'gram_schmidt_FV')
            [gs_rank] = gram_schmidt_FV(otherLabels',otherFeats');
            idx_best_features=gs_rank(1:nb_features,1);
        end

        if strcmp(ranking_method, 'gs_with_probe_FV')
            [gswp_rank, ~] = gs_with_probe_FV(otherLabels,otherFeats,5);
            idx_best_features=gswp_rank(1:nb_features);
        end


        if strcmp(ranking_method, 'MGSselec')
            [idx_best_features] = MGSselec(otherLabels',otherFeats',nb_features);
            idx_best_features=idx_best_features(1:nb_features);
        end

        %[idx] = gram_schmidt(otherFeats, otherLabels, maxFeatNum);
        idx=idx_best_features;
        idx=idx(:);
        index_selected=[index_selected idx(:)];

    end

    if nargin==3
        idx=best_index(:);
        index_selected=[index_selected idx];
    end

    %% LOEO Algorithme
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

        %% Save the results
        [YP, sc]=predict(classObj,currFeats(idx(1:feat),:)');
        scores(feat,epoch) = sc(2);
        prediction(feat,epoch) = YP;

    end
end
    close(h) %%%%
end

