function handles = set_Data_classificationGUI(handles, hObject)


% set classifiation mathod
DC_method = handles.init_parameter.classification_method;

if(strcmp(DC_method, 'LDA') > 0.5)
    set(handles.DC_rb_LDA, 'Value', 1);
elseif (strcmp(DC_method, 'QDA') > 0.5)
    set(handles.DC_rb_QDA, 'Value', 1);
elseif (strcmp(DC_method, 'SVM') > 0.5)
    set(handles.DC_rb_SVM, 'Value', 1);
elseif (strcmp(DC_method, 'DTC') > 0.5)
    set(handles.DC_rb_DTC, 'Value', 1);
end


%Set cross validation method
DC_CV_method = handles.init_parameter. cross_validation_method;

if(strcmp(DC_CV_method, 'LOEO') > 0.5)
    set(handles.DC_cb_LOEO, 'Value', 1);
elseif (strcmp(DC_method, 'LOSO') > 0.5)
    set(handles.DC_cb_LOSO, 'Value', 1);
end


%Diverse updates
set_button_availability(handles, hObject);
guidata(hObject, handles);