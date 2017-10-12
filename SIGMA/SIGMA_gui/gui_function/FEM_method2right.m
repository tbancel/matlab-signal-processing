function handles = FEM_method2right(handles, hObject)

% get selected methods
    select_index = get(handles.FEM_unselected, 'Value');
    % Add selected methods to handles
    handles.selected_method = sort([ handles.selected_method , handles.unselected_method(select_index)]);
    %  handles.selected_method
    % remove method from un selected
    handles.unselected_method = setdiff(handles.unselected_method, handles.selected_method);
    %  handles.unselected_method
    
    % update listbox
    %  Create new cell array
    selected_method_name = cell(1, length(handles.selected_method) );
    for cM = 1:length(handles.selected_method)
        selected_method_name{cM} = handles.init_method(handles.selected_method(cM)).method_name;
    end
    unselected_method_name = cell(1, length(handles.unselected_method) );
    for cM = 1:length(handles.unselected_method)
        unselected_method_name{cM} = handles.init_method(handles.unselected_method(cM)).method_name;
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