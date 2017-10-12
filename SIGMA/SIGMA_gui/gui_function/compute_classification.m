function handles = compute_classification(handles, hObject)


%Determine what to compute before classification
c1 = isequal(handles.computed.subject, handles.init_parameter.subject)
c2 = isequal(handles.computed.freq_band, handles.init_parameter.selected_band)
c3 = isequal(handles.computed.init_method, handles.init_method)
c4 = isequal(handles.computed.threshold_probe, handles.init_parameter.threshold_probe)
c5 = isequal(handles.computed.nb_features, handles.init_parameter.nb_features)

if( c1*c2*c3 < 0.5 )
    % not equal
    % compute features
    disp('features need to be reocmputed : you changed them')
    handles = compute_features(handles, hObject);
    handles = feature_ranking_gui(handles, hObject);
   
elseif( c4*c5 < 0.5)
    % rank features
    handles = feature_ranking_gui(handles, hObject);
end

set(handles.learning_panel, 'Visible', 'off')
disp('not visible')
 %Compute classification
handles.performances_results = Sigma_cross_validation(handles.features_results,handles.init_parameter,handles.init_method);
set(handles.learning_panel, 'Visible', 'on')
disp('visible')
% updates button and handles
set_button_availability(handles, hObject);
guidata(hObject, handles);


end