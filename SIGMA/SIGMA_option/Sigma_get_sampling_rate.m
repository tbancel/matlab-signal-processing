function init_parameter=Sigma_get_sampling_rate(init_parameter)
%% This function is used to get/set the sampling rate of the signal.
% 

if init_parameter.sampling_rate_default==0 
    sigma_comment='Extract the Sampling rate from the data...';
    Sigma_comment(init_parameter,sigma_comment)
        cd([init_parameter.data_location])
            % load an example of data
            load(['subject_' num2str(init_parameter.subject(1)) '.mat']);
            % get the sampling rate and the number of channels
            sampling_rate_by_data=s_EEG.sampling_rate;
            nb_channels=size(s_EEG.data,1);  
            channel_name=s_EEG.channel_names;
            
            init_parameter.nb_channels=nb_channels;
            init_parameter.sampling_rate_by_data=sampling_rate_by_data; % in Hz
            init_parameter.channel_name=channel_name;
            clear s_EEG
        cd(init_parameter.sigma_directory) 
        % In this case the sampling rate is :
        init_parameter.sampling_rate=sampling_rate_by_data;

        sigma_comment=['The sampling rate in this case is : ' num2str(init_parameter.sampling_rate) ' Hz'] ;
        Sigma_comment(init_parameter,sigma_comment)   
else % take the defaul value
    sigma_comment='Choose the default value for the sampling rate : 200 Hz...';
    Sigma_comment(init_parameter,sigma_comment)
    
    sampling_rate_by_default=200; % Default value of the sampling rate
    init_parameter.sampling_rate_by_default=sampling_rate_by_default;
    
    % In this case the sampling rate is :
    init_parameter.sampling_rate=sampling_rate_by_default;
    sigma_comment=['The sampling rate in this case is : ' num2str(init_parameter.sampling_rate) ' Hz'] ;
    Sigma_comment(init_parameter,sigma_comment)     
end

end
