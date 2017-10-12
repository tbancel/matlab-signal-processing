function handles = compute_features(handles, hObject)

% this function compute feature used for classification

% get sampling rate of data
handles.init_parameter.sampling_rate_default = 0;
handles.init_parameter = Sigma_frequency_initialisation(handles.init_parameter);
% /§§§§§!!!!! modify this function to allow for resampling : init_parameter=Sigma_resampling_init(init_parameter)

% compute filter parameters
handles.init_parameter = Sigma_filter_parameter(handles.init_parameter);

% make th gui invisible
set(handles.learning_panel, 'Visible', 'off')
 %compute features
handles.features_results = Sigma_feature_extraction(handles.init_parameter,handles.init_method);

%% Features assembling
% remove the feature associated for each method after the assembling
handles.features_results.remove_individual_features='N';
% assemble the features, get the BIG o_feature_matrix
handles.features_results = Sigma_feature_assembling(handles.init_method,handles.init_parameter,handles.features_results);
handles.features_results.o_features_matrix_original = handles.features_results.o_features_matrix;

%% Feature normalisation (ZSCORE)
handles.features_results.o_features_matrix_normalize = (zscore((handles.features_results.o_features_matrix)'))';

% number of computed features and epoch
handles.features_results.nb_features = size(handles.features_results.o_features_matrix, 1);
handles.features_results.nb_epoch = size(handles.features_results.o_features_matrix, 2);
% make the gui visible
set(handles.learning_panel, 'Visible', 'on')

% Display results
set(handles.FEM_st_nb_features_computed, 'String', handles.features_results.nb_features)
% Display results
set(handles.FEM_st_nb_epoch_computed, 'String', handles.features_results.nb_epoch)
% Set the maximum number of feature in Feature Ranking and change
% init_method
set(handles.FR_edit_nb_feature, 'String', handles.features_results.nb_features)
handles.init_parameter.nb_features = handles.features_results.nb_features;

% Set the compute structure
handles.computed.subject = handles.init_parameter.subject;
handles.computed.freq_band = handles.init_parameter.selected_band;
handles.computed.init_method = handles.init_method;
handles.computed.threshold_probe = handles.init_parameter.threshold_probe;
handles.computed.nb_features = handles.init_parameter.nb_features;




set_button_availability(handles, hObject)
guidata(hObject, handles);
end





