function selected_model=Sigma_get_best_model(init_parameter,features_results,init_method,performances_results)

%% Selecting the best results
%%% Get the number of the features with the best AUC
[auc_model, index_max_auc]=max(performances_results.performance(:,8));
selected_model.auc_model=auc_model;
%%% The number of the features giving the best AUC
nb_feat_model=index_max_auc;
selected_model.nb_feat_model=nb_feat_model;
%%% Get the rankin of these features with the OFR

%[best_feat_ofr_model,~] = gram_schmidt(features_results.o_features_matrix,features_results.labels,nb_feat_model); % cosinus angle best ranging

[best_feat_ofr_model]=Sigma_ranking_methods(init_parameter,features_results.o_features_matrix,features_results.labels,nb_feat_model,init_parameter.ranking_method);



selected_model.best_feat_ofr_model=best_feat_ofr_model;
%%% Identification of the features  ofr
[best_organisation_ofr_model, ~]=Sigma_feature_identification(init_parameter,init_method,features_results,best_feat_ofr_model);
selected_model.best_organisation_ofr_model=best_organisation_ofr_model;
selected_model.best_organisation_info_model=features_results.best_organisation_infos;
%%% Get the rankin of these features with the OFR + bagging
best_feat_bag_model=Sigma_election_best_index(performances_results.index_selected);
selected_model.best_feat_bag_model=best_feat_bag_model(1:index_max_auc);
%%% Identification of the features  ofr + bagging
[best_organisation_bag_model, ~]=Sigma_feature_identification(init_parameter,init_method,features_results,best_feat_bag_model);
selected_model.best_organisation_bag_model=best_organisation_bag_model(1:index_max_auc,:);

%%% Performance of this model (the selected model)
performance_model=performances_results.performance(index_max_auc,:);
performance_model_infos=performances_results.performance_infos;
selected_model.performance_model=performance_model;
selected_model.performance_model_infos=performance_model_infos;

%%%Confusion Matrix  transform the labes
outputs=Sigma_adapt_label(performances_results.prediction(index_max_auc,:)); % The predition
targets=Sigma_adapt_label(features_results.labels);% The target, label to predicts
[confusion_matrix,classes] = confusionmat(features_results.labels,performances_results.prediction(index_max_auc,:));

selected_model.confusion_matrix=confusion_matrix;
selected_model.classes=classes;

selected_model.classObj=performances_results.classObj(index_max_auc).classObj;
end