function handles = set_Data_LoadingGUI(handles, hObject)


% load subject and initialize subjects
handles = DL_load_subjects(handles, hObject);

% set selected subjects
% update listbox
selected_subject_name = cell(1, length(handles.init_parameter.subject) );
% update listbox by adding cell array of string containing subject names
for cM = 1:length(handles.init_parameter.subject)
    selected_subject_name{cM} = handles.init_parameter.subject_name{handles.init_parameter.subject(cM)};
end

unselected_subject = setdiff(handles.init_parameter.subject_number, handles.init_parameter.subject);
unselected_subject_name = cell(1, length(unselected_subject) );
for cM = 1:length(unselected_subject)
    unselected_subject_name{cM} = handles.init_parameter.subject_name{unselected_subject(cM)};
end
% Update list Boxes
set( handles.DP_list_subject_selected, 'String', selected_subject_name )
set( handles.DL_list_subject_available, 'String', unselected_subject_name )
set( handles.DP_list_subject_selected, 'Value', 1)
set( handles.DL_list_subject_available, 'Value', 1)


%Diverse updates
set_button_availability(handles, hObject);
guidata(hObject, handles);
end