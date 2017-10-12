function handles = save_GUI_button_availability(handles, hObject)


% OK button
if( isempty(handles.path_name) < 0.5)
    set(handles.SS_pb_ok, 'Enable', 'on');
else
    set(handles.SS_pb_ok, 'Enable', 'off');
end

% Feature extraction
if( isempty(handles.features_results) < 0.5 )
    set(handles.SS_cb_features, 'Enable', 'on');
else
    set(handles.SS_cb_features, 'Enable', 'off');
end


% classification
if( isempty(handles.performances_results) < 0.5 )
    set(handles.SS_cb_classification_performences, 'Enable', 'on');
else
    set(handles.SS_cb_classification_performences, 'Enable', 'off');
end

%selected model
if( isempty(handles.selected_model) < 0.5 )
    set(handles.SS_cb_selected_model, 'Enable', 'on');
else
    set(handles.SS_cb_selected_model, 'Enable', 'off');
end

% MANAGE the check buttons
if( handles.SS_cb_features < 0.5 )
    handles.features_results = [];
else
    handles.features_results = handles.input.features_results;
end

% classification
if( handles.SS_cb_classification_performences < 0.5 )
    handles.performances_results = [];
else
    handles.performances_results = handles.input.performances_results;
end

% selected model
if( handles.SS_cb_selected_model < 0.5 )
    handles.selected_model = [];
else
    handles.selected_model = handles.input.selected_model;
end












