function handles = FE_set_frequency_bandsGUI(handles, hObject)

% Update init_paramter using values provided by edit fields

nbButton = length(handles.init_parameter.frequency_button_name);
for cB = 1:(nbButton-1) % minimum values
    % add value to field
    set(eval([ 'handles.FE_ed_', handles.init_parameter.frequency_button_name{cB}(4:end)  , '_mf' ] ), 'String', num2str(handles.init_parameter.freq_bands(cB,1)));
end

for cB = 1:(nbButton-1) % maximum values
    set(eval([ 'handles.FE_ed_', handles.init_parameter.frequency_button_name{cB}(4:end)  , '_maf' ] ), 'String', num2str(handles.init_parameter.freq_bands(cB,2)));
end

guidata(hObject, handles);
end

