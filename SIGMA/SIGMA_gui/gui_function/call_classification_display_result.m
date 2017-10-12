function handles = call_classification_display_result(handles, hObject)


assignin('base', 'init_parameter', handles.init_parameter )
assignin('base', 'init_method', handles.init_method )
assignin('base', 'features_results', handles.features_results )
assignin('base', 'performances_results', handles.performances_results )
assignin('base', 'selected_model', handles.selected_model )

if(isempty(handles.performances_results) < 0.5)

Results_viz()

else
    disp('No results available')
    errordlg('No results available')
end

guidata(hObject, handles);

end