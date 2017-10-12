function init_parameter=Sigma_high_pass_filter_init(init_parameter,highPass_freq,highPass_order)
% This function is used by the function 'Sigma_frequency_initialisation
% It includ on the structure init_parameter the information related to 
% the choice of the user regarding the  frequency bands to study

%% 2: Definition of the LowPass filter default value
if init_parameter.high_pass_filter==1
    highPass_filter_info={['High Pass Filter (freq,order) : (' num2str(highPass_freq) 'Hz,' num2str(highPass_order) ')' ]};
    % Out put For the LowPassFilter
    init_parameter.highPass_filter.highPass_freq=highPass_freq;
    init_parameter.highPass_filter.highPass_order=highPass_order;
    init_parameter.highPass_filter.highPass_filter_info=highPass_filter_info;
end


end