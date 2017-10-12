function init_parameter=Sigma_resampling_init(init_parameter)

%% User choose the desired freqeucy of sampling rate
sampling_rate_by_user = init_parameter.sampling_rate;
sampling_rate = init_parameter.sampling_rate_by_data;

%% Interpolate the data
    if sampling_rate_by_user>sampling_rate
        init_parameter.downsample_data=0;
        init_parameter.interpolate_data=1;
        init_parameter.resample_factor=sampling_rate_by_user/sampling_rate;
        % Comment
        sigma_comment=['The data will be interpolated by a factor of : ' num2str(init_parameter.resample_factor)] ;
        Sigma_comment(init_parameter,sigma_comment)             
    end
%% Downsample the data the data
    if sampling_rate_by_user<sampling_rate
        init_parameter.downsample_data=1;
        init_parameter.interpolate_data=0;
        init_parameter.resample_factor=sampling_rate_by_user/sampling_rate;
        % Comment
        sigma_comment=['The data will be downsampled by a factor of : ' num2str(init_parameter.resample_factor)] ;
        Sigma_comment(init_parameter,sigma_comment)     
    end
%% Do not do anything for the data
    if sampling_rate_by_user==sampling_rate
        init_parameter.downsample_data=0;
        init_parameter.interpolate_data=0;
        init_parameter.resample_factor=sampling_rate_by_user/sampling_rate;
        % Comment
        sigma_comment=['The data will be kept as they are ! the factor is : ' num2str(init_parameter.resample_factor)] ;
        Sigma_comment(init_parameter,sigma_comment)
    end
    
%% In this case the sampling rate is :
init_parameter.sampling_rate=sampling_rate_by_user;
sigma_comment=['The sampling rate in this case is : ' num2str(init_parameter.sampling_rate) ' Hz'] ;
Sigma_comment(init_parameter,sigma_comment)     


end