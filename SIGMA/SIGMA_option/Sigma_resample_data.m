function data_resampled=Sigma_resample_data(init_parameter,data)
%% Put here the Help function
% data_resampled=Sigma_resample_data(init_parameter,data)
% According to the init_parameter.interpolate_data and init_parameter.downsample_data
% the data will be resampled with the associated factor init_parameter.resample_factor

    if init_parameter.downsample_data==1 && init_parameter.interpolate_data==0
        data_resampled = decimate(data,init_parameter.resample_factor);
    end

    if init_parameter.downsample_data==0 && init_parameter.interpolate_data==1 
        data_resampled = interp(data,init_parameter.resample_factor);
    end

    if init_parameter.downsample_data==0 && init_parameter.interpolate_data==0 
        data_resampled = data;
    end

end


