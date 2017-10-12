function handles = DP_subject2right(handles, hObject)


% get selected subject
select_index = get(handles.DL_list_subject_available, 'Value');
% Add selected subject to handles
handles.selected_subject = sort([ handles.selected_subject , handles.unselected_subject(select_index)]);
% Remove method from un selected
handles.unselected_subject = setdiff(handles.unselected_subject, handles.selected_subject);

% update listbox
selected_subject_name = cell(1, length(handles.selected_subject) );
% update listbox by adding cell array of string containing subject names
for cM = 1:length(handles.selected_subject)
    selected_subject_name{cM} = handles.init_parameter.subject_name{handles.selected_subject(cM)};
end
unselected_subject_name = cell(1, length(handles.unselected_subject) );
for cM = 1:length(handles.unselected_subject)
    unselected_subject_name{cM} = handles.init_parameter.subject_name{handles.unselected_subject(cM)};
end
% Update list Boxes
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