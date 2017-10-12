function handles = update_method_from_principal_gui(handles, hObject)


% update frequency definition
handles.init_parameter = Sigma_frequency_initialisation(handles.init_parameter);
% Update Fourier powers using gui values

handles.init_method(1).band_start = handles.init_parameter.selected_freq_bands(:,1); % left frequency point (left limit band)
handles.init_method(1).band_end = handles.init_parameter.selected_freq_bands(:,2); % right frequency point (right limit band)
handles.init_method(1).nb_of_bands = length(handles.init_method(1).band_end);


guidata(hObject, handles);

end