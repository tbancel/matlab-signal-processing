function handles = set_method_GUI(handles, hObject)

% Create a cell array of method name
nb_method = length(handles.init_method);
% assign method numbers
sm = 1; % selected method index
usm = 1; %unselected method index
unselected_method_names = {};
selected_method_names = {};
for cM = 1:nb_method
    if( isempty(find( handles.init_parameter.method == cM)) > 0.5)
        unselected_method_names{usm} = handles.init_method(cM).method_name;
    else
        selected_method_names{sm} = handles.init_method(cM).method_name;
    end
end

% verification
if(length(selected_method_names ) ~= handles.init_parameter.nb_method)
    error
end

%display methods in list
set(handles.FEM_unselected, 'String', unselected_method_names);
set(handles.FEM_unselected, 'Max', max(length(unselected_method_names), 1));
% add method names and numbers in handles
handles.selected_method = handles.init_parameter.method;
handles.unselected_method = setdiff(1:nb_method, handles.init_parameter.method);

% change selection limit of selected method
set(handles.FEM_unselected, 'String', selected_method_names);
set(handles.FEM_unselected, 'Max', max(length(unselected_method_names),1));

handles = FEM_method2right(handles, hObject);
handles = FEM_method2left(handles, hObject);

guidata(hObject, handles);
