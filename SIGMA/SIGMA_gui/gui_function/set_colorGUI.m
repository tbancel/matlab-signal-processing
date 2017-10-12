function handles = set_colorGUI(handles, hObject)

% Set colors of GUI

% Data loading
if( strcmp(get(handles.DL_pb_subject_select, 'Enable'),  'off')  ) % no data selected
    handles = DL_set_color(handles, hObject, 1);
elseif(strcmp(get(handles.DL_pb_subject_select, 'Enable'),  'on') && (length(handles.init_parameter.subject) < 0.5)) % data loaded but no subject selected
    handles = DL_set_color(handles, hObject, 2);
elseif(strcmp(get(handles.DL_pb_subject_select, 'Enable'),  'on') && (length(handles.init_parameter.subject) > 0.5)) % subject selected
    handles = DL_set_color(handles, hObject, 3);
end


% data processing
if( handles.init_parameter.nb_subject  < 0.5) % no subject selected
    handles = DP_set_color(handles, hObject, 1);
elseif( (handles.init_parameter.nb_subject > 0.5) &&  (handles.init_parameter.nb_bands > 0.5) )% 1 subject dans one band selected
    handles = DP_set_color(handles, hObject, 3);
else  % other cases
    handles = DP_set_color(handles, hObject, 2);
end

%Feature extraction
% OK : 1 subject, 1 band, 1 method
if( (length(handles.init_parameter.subject) > 0.5) &&  (handles.init_parameter.nb_bands > 0.5) && (length(handles.init_parameter.method) > 0.5))
    handles = FEM_set_color(handles, hObject, 3);
    % ready : 1 subject, 1 band, 0 method
elseif((length(handles.init_parameter.subject) > 0.5) &&  (handles.init_parameter.nb_bands > 0.5) && (length(handles.init_parameter.method) < 0.5))
    handles = FEM_set_color(handles, hObject, 2);
else
    handles = FEM_set_color(handles, hObject, 1);
end

% Feature ranking
% feature result non empty
if( isempty(handles.features_results) < 0.5 )
    handles = FR_set_color(handles, hObject, 3);
else
    handles = FR_set_color(handles, hObject, 1);
end


% Data classification

% OK : if feature ranking clasification results is enables
if( strcmp(get(handles.DC_pb_compute, 'Enable'),  'off') )
    handles = DC_set_color(handles, hObject, 1);
else
    handles = DC_set_color(handles, hObject,3);
end











end