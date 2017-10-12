function handles = set_Feature_ExtractionGUI(handles, hObject)




% update method list
handles = set_method_GUI(handles, hObject);


%Diverse updates
set_button_availability(handles, hObject);
guidata(hObject, handles);
end