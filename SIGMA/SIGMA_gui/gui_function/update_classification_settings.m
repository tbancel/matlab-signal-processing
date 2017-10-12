function handles = update_classification_settings(handles, hObject)



% UPDATE CLASSIFICATION ALGORITHM
% get selected button
button_tag = char(get(handles.DC_bg_classification_method.SelectedObject, 'Tag'));
% Assing method to init_parameter
if( strcmp(button_tag , 'DC_rb_LDA'))
    handles.init_parameter.classification_method = 'LDA';
elseif(strcmp(button_tag , char('DC_rb_QDA')))
    handles.init_parameter.classification_method = 'QDA';
elseif(strcmp(button_tag , char('DC_rb_SVM')))
    handles.init_parameter.classification_method = 'SVM';
elseif(strcmp(button_tag , char('DC_rb_DTC')))
    handles.init_parameter.classification_method = 'DTC';
end


% UPDATE CROSS VALIDATION METHOD
button_tag = char(get(handles.DC_bg_cross_validation.SelectedObject, 'Tag'));
% Assing method to init_parameter
if( strcmp(button_tag , 'DC_cb_LOEO'))
    handles.init_parameter.cross_validation_method = 'LOEO';
elseif(strcmp(button_tag , char('DC_cb_LOSO')))
    handles.init_parameter.cross_validation_method = 'LOSO';
end


guidata(hObject, handles);
end