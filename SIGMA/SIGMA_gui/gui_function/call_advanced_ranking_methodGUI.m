function handles = call_advanced_ranking_methodGUI(handles, hObject)


% call advanced method selection  GUI
varargout = advanced_method_gui(handles.init_parameter);

% assign advanced method
handles.init_parameter.adv_ranking_method = varargout;
set(handles.FR_st_selected_adv_method, 'String', handles.init_parameter.adv_ranking_method);

guidata(hObject, handles);


end