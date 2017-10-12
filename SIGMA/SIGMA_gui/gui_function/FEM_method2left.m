function handles = FEM_method2left(handles, hObject)

% get selected methods
select_index = get(handles.FEM_selected, 'Value');

% Add unselected methods to handles
handles.unselected_method = sort([ handles.unselected_method , handles.selected_method(select_index)]);
%handles.unselected_method
% remove method from selected
handles.selected_method = setdiff(handles.selected_method, handles.unselected_method);
%handles.selected_method

% update listbox
%  Create new cell array
unselected_method_name = cell(1, length(handles.unselected_method) );
for cM = 1:length(handles.unselected_method)
    unselected_method_name{cM} = handles.init_method(handles.unselected_method(cM)).method_name;
end
selected_method_name = cell(1, length(handles.selected_method) );
for cM = 1:length(handles.selected_method)
    selected_method_name{cM} = handles.init_method(handles.selected_method(cM)).method_name;
end

set( handles.FEM_selected, 'String', selected_method_name )
set( handles.FEM_unselected, 'String', unselected_method_name )

set( handles.FEM_unselected, 'Value', 1)
set( handles.FEM_selected, 'Value', 1)

  set( handles.FEM_unselected, 'Max', length(handles.unselected_method ))
    set( handles.FEM_selected, 'Max', length(handles.selected_method ))

% uptade init_parameter
handles.init_parameter.method = handles.selected_method;
handles.init_parameter.nb_method = length(handles.init_parameter.method);
handles.init_parameter.apply_filter = ones(size(handles.init_parameter.method));

set_button_availability(handles, hObject)
guidata(hObject, handles);

end