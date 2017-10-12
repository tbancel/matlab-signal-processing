function [performance_results]=Sigma_cross_validation(features_results,init_parameter,init_method)
    %% This function
    %%% [performance_results]=Sigma_cross_validation(features_results,init_parameter,init_method)
    % Compute the performances of the classification from the training
    % Inputs : TODO
    
    % Outputs :
    % performance_results : structure containig the following informations  
    %             cross_validation_method: 'LOSO' or 'LHSO' or 'LOEO'
    %             classification_method: 'LDA' or 'QDA' or 'SVM'
    % scores: structure of the Matrix of scores (propabilities of the positive classe) resulted from the predict function NxM where:
    %                                        N is the number of the features (output of the OFR)
    %                                        M is the number of examples (epochs) = size of the labels
    %       scores =     [NxM double]    [NxM double] where the firste is the Negative score, the seconde is the positive score 
    %%% TODO : should be modified to includ both of the positive and negative classes  
    % prediction: Matrix with the size  NxM, 
    %             each line contains the output labels predicted usigne the number of line features
    % index_selected: Matrix containing the index of the selected features, the size of this matrix is NxNbCV,
    %             where N is the number of the selected features and the NbCV is the number of the CrossValidation itteration
    %             in the case of  the LOSO : NbCV = nb_subject
    %             in the case of  the LHSO : NbCV = 2*nb_subject  
    %             in the case of  the LOEO : NbCV = nb_epochs (all epochs)  
    % performance: Containig the performance result explaned in the performance_infos size of Nx8
    % performance_infos: {'Accuracy'  'Sensitivity'  'Specificity'  'Precision'  'Recall'  'F-Measure'  'G-mean'  'Auc'}
    % best_voted_index: Contains the index of the best voted index
    %             (bagging) of the all cross validation iteration (NbCV) [size = Nx1]
    %             best_organisation: Contain the best feature selection withe
    %             the identification of the features see
    % best_organisation_infos [size = Nx5]
    %             best_organisation_infos: {1x5 cell}
    %%% Dependences :
    %  Sigma_cross_validation_lhso
    %  Sigma_cross_validation_loeo
    %  Sigma_cross_validation_loso
    %  Sigma_compute_performance
    %  Sigma_election_best_index
    %  Sigma_feature_identification
     
%%      
%% Initialisation
    cross_validation_method=init_parameter.cross_validation_method;
    performance_results.cross_validation_method=cross_validation_method;
        performance_results.classification_method=init_parameter.classification_method;

%% Computing    
    %% Compute the cross validation accordinf to the chosen method
    %%% LHSO
    if strcmp(cross_validation_method,'LHSO')
        [scores,prediction,index_selected, classObj]=Sigma_cross_validation_lhso(features_results,init_parameter);
    end
    %%% LOEO
    if strcmp(cross_validation_method,'LOEO')
        [scores,prediction,index_selected, classObj]=Sigma_cross_validation_loeo(features_results,init_parameter);
    end
    %%% LOSO
    if strcmp(cross_validation_method,'LOSO')
        [scores,prediction,index_selected, classObj]=Sigma_cross_validation_loso(features_results,init_parameter);
    end    
    
    %%% LXSO
    if strcmp(cross_validation_method,'LxSO')
        [scores,prediction,index_selected,labels_lxso, classObj] = Sigma_cross_validation_lxso(features_results,init_parameter,best_index);
        labels=labels_lxso;
    end    

    %% Compute the performance
    scores_pc=scores{2};
    if strcmp(cross_validation_method,'LxSO')
    [performance,performance_infos]=Sigma_compute_performance(labels_lxso,prediction,scores_pc);
        %labels=labels_lxso;
    else   
    [performance,performance_infos]=Sigma_compute_performance(features_results.labels,prediction,scores_pc);
    end
    
    %%% get the best voted ranking
    best_voted_index=Sigma_election_best_index(index_selected);
    %% identification of the features
    [best_organisation, best_organisation_infos]=Sigma_feature_identification(init_parameter,init_method,features_results,best_voted_index);

%% Outpus 
    % Output
    performance_results.cross_validation_method=cross_validation_method;
    performance_results.cross_validation_method=cross_validation_method;
    performance_results.scores=scores;
    performance_results.prediction=prediction;
    performance_results.index_selected=index_selected;
    performance_results.performance=performance;
    performance_results.performance_infos=performance_infos;
    performance_results.best_voted_index=best_voted_index;
    performance_results.best_organisation_voted=best_organisation;
    performance_results.best_organisation_infos=best_organisation_infos;
    performance_results.classObj=classObj;

end


