function init_parameter=Sigma_band_pass_filter_init(init_parameter,bandPass_freq,bandPass_order)
% This function is used by the function 'Sigma_frequency_initialisation
% It includ on the structure init_parameter the information related to 
% the choice of the user regarding the  frequency bands to study

%% 2: Definition of the LowPass filter default value
if init_parameter.band_pass_filter==1
     bandPass_filter_info={['Band Pass Filter (freq,order) : (' num2str(bandPass_freq) 'Hz,' num2str(bandPass_order) ')' ]};
%     % Out put For the High PassFilter
     init_parameter.bandPass_filter.bandPass_freq=bandPass_freq;
     init_parameter.bandPass_filter.bandPass_order=bandPass_order;
     init_parameter.bandPass_filter.bandPass_filter_info=bandPass_filter_info;
end


end