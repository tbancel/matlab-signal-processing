function handles = call_edit_classification_method_GUI(handles, hObject)

% Call the classification metod edit panel
varargout = SVM_edit_gui(handles.init_parameter.svm_parameter);

% set the new svm parameters
handles.init_parameter.svm_parameter = varargout;
disp(varargout)
disp(handles.init_parameter.svm_parameter )

% upodate gui
guidata(hObject, handles);















