function handles = call_method_edit_gui(handles, hObject)


% choice of the current method selected
method_number = get(handles.FEM_selected, 'Value');
init_met_method_number = handles.selected_method(method_number);
[nb_parameter_to_change, parameter_index] = check_method_editable_parameter(handles.init_method(init_met_method_number));

% Call gui and make the principal invisible
set(handles.learning_panel, 'Visible', 'off')
varargout = method_edit_gui(handles.init_method(init_met_method_number));
set(handles.learning_panel, 'Visible', 'on')

% Change method paramters according to gui and update init_method
handles.init_method(init_met_method_number) = varargout;


end