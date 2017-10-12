function handles = DP_update_frequency_band(handles, hObject)

% something strange
handles.init_parameter.apply_filter = 1;

% Update frequency bands and check box state
% find number of button
nbButton = length(handles.frequency_button_name);
% load selected bands
selected_band = handles.init_parameter.selected_band;

for cButton = 1:(nbButton-1) % loop on all buttons
    % Get value of button
    check_value = get(eval( ['handles.' , handles.frequency_button_name{cButton} ]), 'Value');
    % Modify selected band
    selected_band = DP_modify_selected_band(selected_band, cButton, check_value);
end


% Code the behavior of "all" button
if(length(selected_band) == (nbButton-1))
     set(eval( ['handles.' , handles.frequency_button_name{nbButton} ]), 'Value', 1);
else
     set(eval( ['handles.' , handles.frequency_button_name{nbButton} ]), 'Value', 0);
end
  
% Upsate data structure
nb_bands=length(selected_band);
handles.init_parameter.selected_band = selected_band;
handles.init_parameter.nb_bands = nb_bands; 

set_button_availability(handles, hObject)
guidata(hObject, handles);

end