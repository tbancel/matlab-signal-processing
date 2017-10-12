function handles = DC_set_color(handles, hObject, nb_color)


% set color of Feature extracton method
set(handles.DC, 'BackgroundColor', handles.color{nb_color});
set(handles.DC_bg_classification_method, 'BackgroundColor', handles.color{nb_color});
set(handles.DC_bg_cross_validation, 'BackgroundColor', handles.color{nb_color});
set(handles.DC_rb_LDA, 'BackgroundColor', handles.color{nb_color});
set(handles.DC_rb_QDA, 'BackgroundColor', handles.color{nb_color});
set(handles.DC_rb_SVM, 'BackgroundColor', handles.color{nb_color});
set(handles.DC_rb_DTC, 'BackgroundColor', handles.color{nb_color});
set(handles.DC_cb_LOEO, 'BackgroundColor', handles.color{nb_color});
set(handles.DC_cb_LOSO, 'BackgroundColor', handles.color{nb_color});

guidata(hObject, handles);

end