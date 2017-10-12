function handles = FR_set_color(handles, hObject, nb_color)


% set color of Feature ranking
set(handles.FR, 'BackgroundColor', handles.color{nb_color});
set(handles.FR_bg_nb_feature, 'BackgroundColor', handles.color{nb_color});
set(handles.FR_bg_ranking_method, 'BackgroundColor', handles.color{nb_color});
set(handles.FR_rb_nb_feature, 'BackgroundColor', handles.color{nb_color});
set(handles.FR_rb_probe_variable, 'BackgroundColor', handles.color{nb_color});
set(handles.FR_st_probe_probability_desc, 'BackgroundColor', handles.color{nb_color});
set(handles.FR_rb_GS, 'BackgroundColor', handles.color{nb_color});

guidata(hObject, handles);

end