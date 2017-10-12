function handles = DL_set_color(handles, hObject, nb_color)







 set(handles.DL, 'BackgroundColor', handles.color{nb_color});
    set(handles.DL_path_text, 'BackgroundColor', handles.color{nb_color});
    set(handles.DL_Data_Compatibility_info, 'BackgroundColor', handles.color{nb_color});
    set(handles.DL_info_subject, 'BackgroundColor', handles.color{nb_color});
    set(handles.DL_Data_Compatibility_text, 'BackgroundColor', handles.color{nb_color});
    set(handles.DL_suject_text, 'BackgroundColor', handles.color{nb_color});
    set(handles.DL_subject_list_text, 'BackgroundColor', handles.color{nb_color});
    set(handles.DL_panel_data_visualisation, 'BackgroundColor', handles.color{nb_color});




guidata(hObject, handles);


end