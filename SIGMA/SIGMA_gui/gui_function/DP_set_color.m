function handles = DP_set_color(handles, hObject, nb_color)




 set(handles.DP, 'BackgroundColor', handles.color{nb_color});
    set(handles.DP_panel_frequency_band, 'BackgroundColor', handles.color{nb_color});
    set(handles.DP_panel_sampling_rate, 'BackgroundColor', handles.color{nb_color});
    for cB = 1:(length(handles.frequency_button_name))
        set(eval( ['handles.' handles.frequency_button_name{cB} ] ), 'BackgroundColor', handles.color{nb_color});
    end
    for cB = 1:(length(handles.frequency_button_name)-1)
        set(eval( ['handles.DP_st_',  lower(handles.frequency_button_name{cB}(4:end)) ] ), 'BackgroundColor', handles.color{nb_color});
    end
    
    set(handles.DP_st_exp_SR, 'BackgroundColor', handles.color{nb_color});
    set(handles.DP_st_experimental_sampling, 'BackgroundColor', handles.color{nb_color});
    set(handles.DP_MHZ, 'BackgroundColor', handles.color{nb_color});
    set(handles.DP_cb_resampling_enable, 'BackgroundColor', handles.color{nb_color});


guidata(hObject, handles);


end