function init_parameter=Sigma_low_pass_filter_init(init_parameter,lowPass_freq,lowPass_order)
% This function is used by the function 'Sigma_frequency_initialisation
% It includ on the structure init_parameter the information related to 
% the choice of the user regarding the  frequency bands to study

%% 2: Definition of the LowPass filter default value
if init_parameter.low_pass_filter==1
    lowPass_filter_info={['LowPass Filter (freq,order) : (' num2str(lowPass_freq) 'Hz,' num2str(lowPass_order) ')' ]};
    % Out put For the LowPassFilter
    init_parameter.lowPass_filter.lowPass_freq=lowPass_freq;
    init_parameter.lowPass_filter.lowPass_order=lowPass_order;
    init_parameter.lowPass_filter.lowPass_filter_info=lowPass_filter_info;
end


end