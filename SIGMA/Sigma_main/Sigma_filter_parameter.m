function init_parameter=Sigma_filter_parameter(init_parameter)
%% compute the parameters for the filters
% Compute the parameters of the band
% Compute the parameters of the Low Pass Filter
% Compute the parameter of the Notch Filter
% Compute the Wavelette transform
%global init_parameter; 


%% The sampling rate is needed in this script, if it's not defined in the 
% init_parameter by the default value, the data file will be loaded in this
% script and pick the used value from the data file
%% code
% if ~isfield(init_parameter,'sampling_rate')
%     sigma_comment='Extract the Sampling rate from the data...';
%     Sigma_comment(init_parameter,sigma_comment)
%         cd([init_parameter.data_location])
%             % load an example of data
%             load([num2str(init_parameter.subject(1)) '.mat']);
%             % get the sampling rate and the number of channels
%             sampling_rate=s_EEG.sampling_rate;
%             nb_channels=size(s_EEG.data,1);  
% 
%             init_parameter.nb_channels=nb_channels;
%             init_parameter.sampling_rate=sampling_rate; % in Hz
%             clear s_EEG
%         cd(init_parameter.sigma_directory) 
% else % take the defaul value
%     sampling_rate=init_parameter.sampling_rate;
% end
% 
% %% Downsampl or interpolate the data
% if init_parameter.downsample_data==1;
%     
%    % TODO 
% end

% if init_parameter.interpolate_data==1
%     % TODO
% end





%% 1- Compute the parameters for the bands extraction
%% Select the band from the user choice
selected_band=init_parameter.selected_band; % list of the selected bands
selected_freq_bands=init_parameter.selected_freq_bands; %  List of the frequency
%selectd_freq_list=init_parameter.selectd_freq_list; %  list of the bands to the study
apply_filter=init_parameter.apply_filter; % check if the filter will apply for a method or not
filter_order=init_parameter.band_filter_order; % Ordre of the filters for the bands extractiion 
sampling_rate=init_parameter.sampling_rate;
% normalized bands to compute the parameters 
selectd_freq_bands_normalized=selected_freq_bands/(sampling_rate/2);

%filt_band_param=[];

%% Compute the parameters to filters in the desired bands (in order to extract the bands)
if sum(apply_filter)>0
sigma_comment='Extract the desired bands (band passe filter) from the original signal...';
Sigma_comment(init_parameter,sigma_comment)
    for i1=1:length(selected_band)
        Wn=selectd_freq_bands_normalized(i1,:);
        % Comput the filters parameters
        [b, a] = butter(filter_order,Wn,'bandpass');
        % to plot the bod diagram
        %fvtool(b,a);

        [z, p, k] = butter(filter_order,Wn,'bandpass');
        [sos,g] = zp2sos(z,p,k);
        filt_band_param(i1) = dfilt.df2sos(sos,g);
        % to use the filter :  fdata = filter(filt,EEG_data);
            %% Example
            % inputData=10*randn(1,1000); 
            % filt=filt_band_param;
            % filteredData = filter(filt,inputData); %
            % figure;
            % plot(inputData,'r');
            % hold on;
            % plot(filteredData,'b');
    end
    init_parameter.filt_band_param=filt_band_param; %% will be used in the feature extraction function method after method 
end


%% 2 The parameters for the low pass filter
if init_parameter.low_pass_filter==1
sigma_comment='Comput the low pass filter parameters ...';
Sigma_comment(init_parameter,sigma_comment)
    sampleRate = sampling_rate; % Hz
    cutOffFreq = init_parameter.lowPass_filter.lowPass_freq; % Hz
    filterOrder = init_parameter.lowPass_filter.lowPass_order; % Filter order (e.g., 2 for a second-order Butterworth filter)
    [b, a] = butter(filterOrder, cutOffFreq/(sampleRate/2)); % Generate filter coefficients
    %fvtool(b,a);

        %% Example
        % inputData=10*randn(1,100); 
        % filteredData = filtfilt(b, a, inputData); % Apply filter to data using zero-phase filtering
        % figure;
        % plot(inputData,'r');
        % hold on;
        % plot(filteredData,'b');
    init_parameter.lowPass_filter.low_pass_param=[b; a];
    init_parameter.lowPass_filter.low_pass_param_infos=' To use the lowPass : filteredData = filtfilt(b, a, inputData); % Apply filter to data using zero-phase filtering ; low_pass_param=[b; a]';
end


%% 3 The parameters for the High pass filter
if init_parameter.high_pass_filter==1
sigma_comment='Comput the High pass filter parameters ...';
Sigma_comment(init_parameter,sigma_comment)
   
cutOffFreq=init_parameter.highPass_filter.highPass_freq; % Hz% cut off frequency
fn=sampling_rate/2; %nyquivst frequency = sample frequency/2;
order = init_parameter.highPass_filter.highPass_order; % Filter order (e.g., 2 for a second-order Butterworth filter); %6th order filter, high pass
[b, a]=butter(order,(cutOffFreq/fn),'high');
%% check the quality of the filter
%    fvtool(b,a);

  
        %% Example
        % inputData=10*randn(1,100); 
        % filteredData = filtfilt(b, a, inputData); % Apply filter to data using zero-phase filtering
        % figure;
        % plot(inputData,'r');
        % hold on;
        % plot(filteredData,'b');
    init_parameter.lowPass_filter.low_pass_param=[b; a];
    init_parameter.lowPass_filter.low_pass_param_infos=' To use the lowPass : filteredData = filtfilt(b, a, inputData); % Apply filter to data using zero-phase filtering ; low_pass_param=[b; a]';
end


%% 4-Compute the parameters for the notch filter
if init_parameter.notch_filter==1
    sigma_comment='Comput the High pass filter parameters ...';
    Sigma_comment(init_parameter,sigma_comment)
% example
%     data=i_EEG;
%     fs=2000;
%     N=length(data);
%     t = ((0:length(data)-1)./fs);
%     t=t';
%     input=data'+0.5*sin(2*pi*60*t);
%     figure;
%     subplot(2,1,1);
%     plot(t,input);
%     title('Noise Corrupted ECG Signal'); xlabel('Time [sec]'); ylabel('Amplitude');
%     Ys = fft(input)/N;
%     equal_space=linspace(0,.5,N/2);
%     freq = fs*equal_space;
%     Ys = Ys(1:ceil(N)/2);
%     subplot(2,1,2);
%     plot(freq,2*abs(Ys));
%     title('ECG signal in Frequency Domain'); xlabel('Frequency (Hz)'); ylabel('|Y(f)|');
%     w0=(60/(fs/2));
%     bw=1/(fs/2);
%     [b,a] = iirnotch(w0,bw);%creates coefficient vectors a and b 
%     refined1=filter(b,a,input); %filter signal 
%     figure
%     subplot(2,1,1)
%     plot(t,refined1)
%     title('Refined ECG signal using filter of bandwidth 1Hz');
%     subplot(2,1,2)
%     bw=5/(fs/2);
%     [b,a] = iirnotch(w0,bw);
%     refined2=filter(b,a,input);
%     plot(t,refined2)
%     title('Refined ECG signal using filter of bandwidth 5Hz');
    
    sampling_rate=init_parameter.sampling_rate;
    notch_freq=init_parameter.notch_filter.notch_freq;
    w0=(notch_freq/(sampling_rate/2));% the normalized frequency to remove
    notch_band_width=init_parameter.notch_filter.notch_band_width;
    bw=notch_band_width/(sampling_rate/2);% the normalized band width
    [b,a] = iirnotch(w0,bw);%creates coefficient vectors a and b 

%     filteredData=filter(b,a,x); % notch filtered signal 
%     % Example
%     Fs = 2000;                    % Sampling frequency
%     T = 1/Fs;                     % Sample time
%     L = 1000;                     % Length of signal
%     t = (0:L-1)*T;                % Time vector
%     % Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
%     x = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t); 
%     
%     inputData=filteredData; 
%     Nsamps = length(inputData);
%     t = (1/Fs)*(1:Nsamps)   ;       %Prepare time data for plot
%     % Do Fourier Transform
%     inputData_fft = abs(fft(inputData));            %Retain Magnitude
%     inputData_fft = inputData_fft(1:Nsamps/2);      %Discard Half of Points
%     f = Fs*(0:Nsamps/2-1)/Nsamps;   %Prepare freq data for plot
%     % Plot Sound File in Time Domain
%     figure;
%     subplot(2,1,1)
%     plot(t, inputData);
%     xlabel('Time (s)');
%     ylabel('Amplitude');
%     title('Tuning Fork A4 in Time Domain')
%     % Plot Sound File in Frequency Domain
%     subplot(2,1,2)
%     plot(f, inputData_fft);
%     xlabel('Frequency (Hz)');
%     ylabel('Amplitude')
%     title('Frequency Response of Tuning Fork A4')
    
    
    
     filteredData = filter(b, a, inputData); % Apply filter to data using zero-phase filtering
    % figure;
    % plot(inputData,'r');
    % hold on;
    % plot(filteredData,'b');
    
    %
    init_parameter.notch_filter.notch_param=[b; a];
    init_parameter.notch_filter.notch_param_infos=' To use the Notch Filter : filteredData = filter(b,a,input); % Apply filter to data using zero-phase filtering ; notch_param=[b; a]';
end
%% 3 The wavelet transform parameters (use a condition in the initialisation parameters)
% adde the function of françois and modify it in order to use the results
% as a variable in order to extract the features
if init_parameter.wavelet_transform==1
    wavelet_type=init_parameter.wavelet_transform_param.wavelet_type;
    Min=init_parameter.wavelet_transform_param.minimal_frequency;
    Max=init_parameter.wavelet_transform_param.maximal_frequency;
    frqsmp=init_parameter.wavelet_transform_param.step_frequency;
    Cwt = wavelet_type;
    Fc = centfrq(Cwt);   
    FreqEch=sampling_rate;
    minscal = 1/(Fc * FreqEch / Min);
    maxscal = 1/(Fc * FreqEch / Max);
    step = frqsmp.*(maxscal-minscal)/(Max-Min);
    scale = fliplr(1./[minscal:step:maxscal]);

     %% Example
        % inputData=10*randn(1,100); 
        % Sig = inputData(:);
        % sz = size(Sig,1);
        % Cwt=init_parameter.wavelet_type;
        % Fc = centfrq(Cwt);
        % minscal = 1/(Fc * FreqEch / Min);
        % maxscal = 1/(Fc * FreqEch / Max);
        % step = frqsmp.*(maxscal-minscal)/(Max-Min);
        % s = fliplr(1./[minscal:step:maxscal]);
        % ccfs = cwt(Sig,s,Cwt,'plot'); % transformée en ondelettes
   init_parameter.wavelet_transform_param.scale=scale;
   init_parameter.wavelet_transform_param.wavelet_center_freq=Fc;

   
   %% comput the parameter of the high /low and pass band filter
   
   
end    








end