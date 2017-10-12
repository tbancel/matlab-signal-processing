function handles = DP_set_frequency_band_GUI(handles, hObject)


% display frequency band value according to init_parameter value
for cB = 1:(length(handles.frequency_button_name)-1)
    set( eval( ['handles.DP_st_', handles.frequency_button_name{cB}(4:end)]), 'String', handles.init_parameter.bands_list{cB}(13:end) );
end