function update_wavelet(handles, hObject)


% set wavelet button state
wavelet_active = get(handles.DP_cb_wavelet_enable, 'Value');
%if active, enable xavelet
if(wavelet_active == 1)
    handles.init_parameter.wavelet_transform = 1;
    % Activate edit button
    set(handles.DP_pb_wavelet_edit, 'Enable', 'on')
else
     handles.init_parameter.wavelet_transform = 0;
     %disable edit button
     set(handles.DP_pb_wavelet_edit, 'Enable', 'off')
end

% update gui data
guidata(hObject, handles);
end