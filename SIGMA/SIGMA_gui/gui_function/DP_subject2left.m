function handles = DP_subject2left(handles, hObject)

% get selected methods
select_index = get(handles.DP_list_subject_selected, 'Value');
% Add unselected methods to handles
handles.unselected_subject = sort([ handles.unselected_subject , handles.selected_subject(select_index)]);
% remove method from selected
handles.selected_subject = setdiff(handles.selected_subject, handles.unselected_subject);

% update listbox by adding cell array of string containing subject names
unselected_subject_name = cell(1, length(handles.unselected_subject) );
for cM = 1:length(handles.unselected_subject)
    unselected_subject_name{cM} = handles.init_parameter.subject_name{handles.unselected_subject(cM)};
end
selected_subject_name = cell(1, length(handles.selected_subject) );
for cM = 1:length(handles.selected_subject)
    selected_subject_name{cM} = handles.init_parameter.subject_name{handles.selected_subject(cM)};
end
% Update list boxes
set( handles.DP_list_subject_selected, 'String', selected_subject_name )
set( handles.DL_list_subject_available, 'String', unselected_subject_name )
set( handles.DP_list_subject_selected, 'Value', 1)
set( handles.DL_list_subject_available, 'Value', 1)

%Update init parameter
handles.init_parameter.subject = handles.init_parameter.subject_index(handles.selected_subject);
handles.init_parameter.nb_subject = length(handles.init_parameter.subject);

set_button_availability(handles, hObject)
guidata(hObject, handles);

end