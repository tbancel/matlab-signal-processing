function initialize_buttons(handles, hObject)


% select subjects
set(handles.DL_pb_subject_select, 'Enable', 'off');
% data viz
set(handles.DL_pb_data_viz, 'Enable', 'off');
% Subject remove
set(handles.DP_pb_subject_remove, 'Enable', 'off');
% compute features
set(handles.FEM_pb_compute, 'Enable', 'off');
% compute features
set(handles.FEM_pb_compute, 'Enable', 'off');
% compute features ranking
set(handles.FR_pb_compute_FR, 'Enable', 'off');
%visualize features ranking
set(handles.FR_pb_display_FR, 'Enable', 'off');
%visualize compute clasification
set(handles.DC_pb_compute, 'Enable', 'off');
%visualize display classification results
set(handles.DC_pb_display, 'Enable', 'off');




end