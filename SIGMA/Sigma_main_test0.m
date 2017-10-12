%% Essai toolbox bci_test1 :
% clear all;close all;clc

%% 0000- Display the liste of the related toolbox used by this script
%%% To make sure that this line will run you should execut all the scipt
%%% and not only this line
Sigma_related_toolbox_and_file(mfilename)


%% 000- Add ISGMA box to the path
Sigma_install

%% 00- Load an existing session
%%% Load a specified session :
session_name='C:\Users\Takfarinas\Dropbox\SIGMA\SIGMA_output\Copy_of_Session_21-Jun-2017_dataTests\Session_21-Jun-2017_dataTests.mat';
Sigma_load_session(session_name)
%Script_load_session


%% ************** Start from here for new session
% Run the "parameters_initialisation" to initialise all the user inputs
% clear all;close all;clc
%% 0- Parameters initialisation
init_parameter=Sigma_parameter_initialisation();

%% bis - Méthodes Initialisation
%% frequency initialisation
% define the frequency of the differents bands
init_parameter = Sigma_frequency_initialisation(init_parameter);

%% compute the parameters of the filters
init_parameter=Sigma_filter_parameter(init_parameter);

%% method initialisation
% define a get the parameters of the methods
init_method=Sigma_method_initialisation(init_parameter);


%these line is calling the data visualization GUI.
Sigma_visualisating_data(init_parameter);



%% Features extraction
% extract the features according to the methods
features_results=Sigma_feature_extraction(init_parameter, init_method);


%% Features assembling
% assemble the features, get the BIG o_feature_matrix
features_results=Sigma_feature_assembling(init_method,init_parameter,features_results);


%% Feature normalisation (ZSCORE)
features_results.o_features_matrix_original=features_results.o_features_matrix;
features_results.o_features_matrix_normalize=(zscore((features_results.o_features_matrix)'))';


%% 3- Features ranking (ASK François) % OFR
% Ranking method ans number of feature to keep
%init_parameter.nb_features=30;
%init_parameter.ranking_method='gram_schmidt';

[features_results]=Sigma_feature_ranking3(init_parameter,init_method,features_results);
%write a textxt file containning the identification of the features
%filename='toto'; % witout the extention, the file is created on the session directory
%Sigma_write_feature_identification(filename,init_parameter,init_method,features_results)
%% Comput the RISK (ASK françois about the risk computational)
% from the OFR

Sigma_3DScatterPlot(init_parameter,init_method,features_results)

%% Get the index of the best organisation from the OFR
% best_organisation=features_results.best_organisation;
% best_index=cell2mat(best_organisation(:,1));


%% MACHINE LEARNING
%%% Teste the result using the Cross Validation methods based on the trainig data
[performances_results]=Sigma_cross_validation(features_results,init_parameter,init_method);

%%% Display some results according to the process

Sigma_display_results(init_parameter,performances_results,features_results) % not already finished
% 2d display with the separation 

feature_index=[1 2];
Sigma_gscatter_plot(init_parameter,features_results,feature_index)

%%% Get the selected results accordin to the best AUC
selected_model=Sigma_get_best_model(init_parameter,features_results,init_method,performances_results);


%% Apply the model 
validation_or_application='Application';
validation_or_application='Validation';

 [computed_feature_new_data, predicted_labels, predicted_scores,validation_results,validation_results_infos]=...
     Sigma_apply_model(init_parameter,init_method,selected_model,validation_or_application);


%% Save the result of the current session
session_name = init_parameter.session_name;
Sigma_save_session(session_name,init_parameter,init_method,features_results,performances_results,selected_model);
%Sigma_save_session(init_parameter,init_method,features_results);

%session_name=init_parameter.full_session_name;
session_name = 'ttest';
Sigma_save_session(session_name,init_parameter,init_method,features_results,performances_results);

%% Load a specified session :
session_name='C:\Users\Takfarinas\Dropbox\SIGMA\totototoXXt.mat';
session_name='takffffaaa.mat';


%%%%%% ------------------------ USER STOPE HERE ---------------------

