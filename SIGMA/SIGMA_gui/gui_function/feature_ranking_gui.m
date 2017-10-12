function handles = feature_ranking_gui(handles, hObject)

% Rank features
handles.features_results = Sigma_feature_ranking3(handles.init_parameter , handles.init_method , handles.features_results);

% Set the computed structure
handles.computed.init_parameter = handles.init_parameter;
handles.computed.init_method = handles.init_method;
handles.computed.features_results = handles.features_results;
handles.computed.DL = handles.DL;
handles.computed.DP = handles.DP;
handles.computed.FR = handles.FR;

% computed gui
handles.computed.subject = handles.init_parameter.subject;
handles.computed.freq_band = handles.init_parameter.selected_band;
handles.computed.init_method = handles.init_method;
handles.computed.threshold_probe = handles.init_parameter.threshold_probe;
handles.computed.nb_features = handles.init_parameter.nb_features;


set_button_availability(handles, hObject);
guidata(hObject, handles);

end
 


