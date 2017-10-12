function init_parameter=Sigma_freq_band_selection(init_parameter,temp_arg)
% This function is used by the function 'Sigma_frequency_initialisation
% It includ on the structure init_parameter the information related to 
% the choice of the user regarding the  frequency bands to study

freq_bands=temp_arg.freq_bands;
filter_order=temp_arg.filter_order;        
bands_list=temp_arg.bands_list;  


%% 1- The definition of the frequency bands for the study(for the features extraction)
if sum(init_parameter.apply_filter)>0
    selected_band=init_parameter.selected_band; % receive the desired list of frequecy chosen by the user
  
    %% For the bands                
    init_parameter.selected_freq_bands = freq_bands(selected_band,:);
    init_parameter.band_filter_order = filter_order;
    init_parameter.selected_freq_list = bands_list(selected_band,:);
else
    init_parameter.selected_band = max(size(freq_bands));
    selected_band = init_parameter.selected_band;
    %% For the bands                
    init_parameter.selected_freq_bands=freq_bands(selected_band,:);
    init_parameter.band_filter_order=filter_order;
    init_parameter.selected_freq_list=bands_list(selected_band,:);
end
 
end