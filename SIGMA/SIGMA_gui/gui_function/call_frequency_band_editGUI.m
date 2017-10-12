function handles = call_frequency_band_editGUI(handles, hObject)




% Call the gui
varargout = frequency_band_edit_gui(handles.init_parameter);

disp('SOOOOOOOOOOOOOORTIE')
disp(varargout)

%Assign the result
handles.init_parameter = varargout;

% set frequency band display
handles = DP_set_frequency_band_GUI(handles, hObject);

guidata(hObject, handles);
end