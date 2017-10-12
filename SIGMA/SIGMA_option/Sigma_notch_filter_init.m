function init_parameter=Sigma_notch_filter_init(init_parameter,notch_freq,notch_band_width,notch_order)
% This function is used by the function 'Sigma_frequency_initialisation
% It includ on the structure init_parameter the information related to 
% the choice of the user regarding the  frequency bands to study

%% 5: Definition of the Notch filter default value
    notch_filter_info={['Notch Filter (freq,order,band width) : (' num2str(notch_freq) 'Hz,' num2str(notch_order) ',' num2str(notch_band_width) 'Hz)' ]};
    %Output For the Notch Filter
    init_parameter.notch_filter.notch_freq=notch_freq;
    init_parameter.notch_filter.notch_order=notch_order;
    init_parameter.notch_filter.notch_band_width=notch_band_width;
    init_parameter.notch_filter.notch_filter_info=notch_filter_info;

end