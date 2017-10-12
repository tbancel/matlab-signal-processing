function handles = set_Data_ProcessingGUI(handles, hObject)

%Set frequency bands
selected_band = handles.init_parameter.selected_band;

set(handles.DP_delta, 'Value', 1-isempty(find(selected_band == 1)) );
set(handles.DP_theta, 'Value', 1-isempty(find(selected_band == 2)) );
set(handles.DP_mu, 'Value', 1-isempty(find(selected_band == 3)) );
set(handles.DP_alpha, 'Value', 1-isempty(find(selected_band == 4)) );
set(handles.DP_beta, 'Value', 1-isempty(find(selected_band == 5)) );
set(handles.DP_gamma, 'Value', 1-isempty(find(selected_band == 6)) );
set(handles.DP_gamma_high, 'Value', 1-isempty(find(selected_band == 7)) );
set(handles.DP_total_bandwidth, 'Value', 1-isempty(find(selected_band == 8)) );
set(handles.DP_all, 'Value', 1-isempty(find(selected_band == 9)) );

% set resample
% set resample button
set(handles.DP_cb_resampling_enable, 'Value', handles.init_parameter.resample_data);
%Set resample value
set(handles.DP_sampling_edit, 'String', num2str(handles.init_parameter.sampling_rate_by_default))
set(handles.DP_st_experimental_sampling, 'String', num2str(handles.init_parameter.sampling_rate_by_data))


% update methods
handles = update_method_from_principal_gui(handles, hObject);

%Diverse updates
set_button_availability(handles, hObject);
guidata(hObject, handles);