function set_all_frequency_button_on(handles, hObject)


nbButton = length(handles.frequency_button_name);
%Check its own value and add it to other buttons
check_value = get(handles.DP_all, 'Value');
for cButton = 1:nbButton
    set(eval( ['handles.' , handles.frequency_button_name{cButton} ]), 'Value', check_value);
end

guidata(hObject, handles);

end