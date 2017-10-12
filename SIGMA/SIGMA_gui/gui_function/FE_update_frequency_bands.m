function handles = FE_update_frequency_bands(handles, hObject)

% Update init_paramter using values provided by edit fields

nbButton = length(handles.init_parameter.frequency_button_name);
for cB = 1:(nbButton-1) % minimum values
    % read value
    freq_value_str = get( eval([ 'handles.FE_ed_', handles.init_parameter.frequency_button_name{cB}(4:end)  , '_mf' ] ) , 'String');
    
    % Check if this value is correct
    
    [ freq_value, status ] = str2num(freq_value_str);
    if(( status == 1) && (freq_value <= handles.init_parameter.freq_bands(cB, 2)))
        handles.init_parameter.freq_bands(cB, 1) = freq_value;
    elseif(( status == 1) && (freq_value > handles.init_parameter.freq_bands(cB, 2)) )
        set(eval([ 'handles.FE_ed_', handles.init_parameter.frequency_button_name{cB}(4:end)  , '_mf' ] ), 'String', 'Value > to frequency max');
    else % if bad format but relevant field
        set(eval([ 'handles.FE_ed_', handles.init_parameter.frequency_button_name{cB}(4:end)  , '_mf' ] ), 'String', 'Bad format')
    end
end

for cB = 1:(nbButton-1) % maximum values
    % read value
    freq_value_str = get( eval([ 'handles.FE_ed_', handles.init_parameter.frequency_button_name{cB}(4:end)  , '_maf' ] ), 'String' );
    
    % Check if this value is correct
    
    [ freq_value, status ] = str2num(freq_value_str);
    if(status == 1 && (freq_value >= handles.init_parameter.freq_bands(cB, 2)))
        handles.init_parameter.freq_bands(cB, 2) = freq_value;
         elseif(( status == 1) && (freq_value < handles.init_parameter.freq_bands(cB, 1)) )
        set(eval([ 'handles.FE_ed_', handles.init_parameter.frequency_button_name{cB}(4:end)  , '_mf' ] ), 'String', 'Value < to frequency min');
    else % if bad format but relevant field
        set(eval([ 'handles.FE_ed_', handles.init_parameter.frequency_button_name{cB}(4:end)  , '_mf' ] ), 'String', 'Bad format')
    end
end

% recreate the bands list in form of string
handles.init_parameter.bands_list = print_freq_band_list(handles.init_parameter.freq_bands);

% set the output
handles.output = handles.init_parameter;

guidata(hObject, handles);
end

