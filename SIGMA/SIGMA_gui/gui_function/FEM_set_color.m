function handles = FEM_set_color(handles, hObject, nb_color)


% set color of Feature extracton method
set(handles.FEM, 'BackgroundColor', handles.color{nb_color});
set(handles.FEM_unselected_text, 'BackgroundColor', handles.color{nb_color});
set(handles.FEM_selected_text, 'BackgroundColor', handles.color{nb_color});
set(handles.FEM_st_nb_feature_desc, 'BackgroundColor', handles.color{nb_color});
set(handles.FEM_st_nb_epoch_desc, 'BackgroundColor', handles.color{nb_color});
set(handles.FEM_st_nb_features_computed, 'BackgroundColor', handles.color{nb_color});
set(handles.FEM_st_nb_epoch_computed, 'BackgroundColor', handles.color{nb_color});


guidata(hObject, handles);

end