function init_parameter=Sigma_frequency_initialisation(init_parameter)

% global init_parameter; TODO

%% Writ the Diary file

Sigma_diary_file(init_parameter)
% Get information from the user data : should have the right format

%% 0- The frquency bounds (minimal and maximal)
% fmin=0.1; % The minimum frequency for the EEG data
% fmax=90; % The maximum frequency f the EEG data
% 
% %% default value for the frequency bands
% Wn_delta=[fmin 4];     Wn_theta=[4 8];    Wn_mu=[8 12];    Wn_alpha=[12 16];    Wn_beta=[16 32];
% Wn_gamma=[32 45];    Wn_gamma_high=[45 fmax];    Wn_all_bands=[fmin fmax];
% 
% % User can specify here the value of the desired bands 
%     %     Wn_delta=[1 4];     Wn_theta=[4 8];    Wn_mu=[8 12];    Wn_alpha=[12 20];    Wn_beta=[20 30];
%     %     Wn_gamma=[30 45];    Wn_gamma_high=[45 fmax];    Wn_all_bands=[fmin fmax];
% % TODO : add an automatic way to choos the value of the frequency 
% 
% freq_bands=[Wn_delta;Wn_theta;Wn_mu;Wn_alpha;Wn_beta;Wn_gamma;Wn_gamma_high;Wn_all_bands];
% 
% % Ordre of the filters for extracting the differents bands  
% filter_order=5;
% bands_list=[
%             {['Delta     : [' num2str(Wn_delta(1)) ' ' num2str(Wn_delta(2)) '] Hz']};
%             {['Theta     : [' num2str(Wn_theta(1)) ' ' num2str(Wn_theta(2)) '] Hz']};
%             {['Mu        : [' num2str(Wn_mu(1)) ' ' num2str(Wn_mu(2)) '] Hz']};
%             {['Alpha     : [' num2str(Wn_alpha(1)) ' ' num2str(Wn_alpha(2)) '] Hz']};
%             {['Beta      : [' num2str(Wn_beta(1)) ' ' num2str(Wn_beta(2)) '] Hz']};
%             {['Gamma     : [' num2str(Wn_gamma(1)) ' ' num2str(Wn_gamma(2)) '] Hz']};
%             {['Gamma_high: [' num2str(Wn_gamma_high(1)) ' ' num2str(Wn_gamma_high(2)) '] Hz']};
%             {['All bands : [' num2str(Wn_all_bands(1)) ' ' num2str(Wn_all_bands(2)) '] Hz']};];

[freq_bands, bands_list, filter_order]=Sigma_define_freq_band();
fmin=min(min(freq_bands)); % The minimum frequency for the EEG data
fmax=max(max(freq_bands)); % The maximum frequency f the EEG data
init_parameter.freq_bands=freq_bands;
init_parameter.bands_list=bands_list;
% Temporary argument for the function Sigma_freq_band_selection
temp_arg.freq_bands=freq_bands; temp_arg.filter_order=filter_order; temp_arg.bands_list=bands_list;        

disp('apply filter')
disp(init_parameter.apply_filter)


%% 1- The definition of the fraquency bands for the study(for the features extraction)
init_parameter = Sigma_freq_band_selection(init_parameter,temp_arg);
clear temp_arg


%% 2: Definition of the LowPass filter default value
if init_parameter.low_pass_filter==1
    lowPass_freq=200; % in Hz
    lowPass_order=5;
    init_parameter=Sigma_low_pass_filter_init(init_parameter,lowPass_freq,lowPass_order);
end
%% 3 : definition of HighPass filter default value
if init_parameter.high_pass_filter==1
    highPass_freq=0.1; % in Hz
    highPass_order=5;
    init_parameter=Sigma_high_pass_filter_init(init_parameter,highPass_freq,highPass_order);
end
%% 4: Definitnion of  Band Pass filter default value %% TODO
if init_parameter.band_pass_filter==1
     bandPass_freq=0.05; % in Hz
     bandPass_order=5;
    init_parameter=Sigma_high_pass_filter_init(init_parameter,highPass_freq,highPass_order);
end

%% 5: Definition of the Notch filter default value
if init_parameter.notch_filter==1
    notch_freq=50;
    notch_order=5;
    notch_band_width=1;
    init_parameter=Sigma_notch_filter_init(init_parameter,notch_freq,notch_band_width,notch_order);
end



%% 6: Definition of wavelet Transform's parameters default
if init_parameter.wavelet_transform==1
    wavelet_type='cmor2.0558-0.5874';
    minimal_frequency=fmin;
    maximal_frequency=fmax;
    step_frequency=1;
    init_parameter=Sigma_wavelet_init(init_parameter,minimal_frequency,maximal_frequency,step_frequency);
end

%% 7 : Get the sampling rate (from data, from the user or the default value )
%% Choose the value for the sampling rate:
%% The sampling rate is needed in this script, if it's not defined in the 
% init_parameter by the default value, the data file will be loaded in this
% script and pick the used value from the data file
init_parameter=Sigma_get_sampling_rate(init_parameter);

%% 8 : Resampling the Data 
if init_parameter.resample_data==1
init_parameter=Sigma_resampling_init(init_parameter);
%% Acording to the value interpolate_data/downsample_data the data will be traited during the process of loading... 
end




%% ****************
     
%% OutPut of this script

%% Displaying the initializing parameters
    if init_parameter.sigma_show_comment==1
        display('=======================   Information : sigma_frequency_initialisation       ==================')
        display(['0- You have selected the frquency bounds between ' num2str([fmin fmax]) 'Hz'])
        if sum(init_parameter.apply_filter)>0
           display(['1a- You have selected the following frquency bands  : ' ]);
           for ind=1:length(init_parameter.selected_band)
               %display([ num2str(freq_bands(ind,1)) '   ' num2str(freq_bands(ind,2)) ' Hz' ])
%               display( init_parameter.bands_list(ind,:))
           end
              
            display(['1c- You have selected the order of  ' num2str(filter_order) ' for the pass-band filters (band extraction)'])
        end
        if init_parameter.low_pass_filter==1
           display(' 2- You have selected the Low Pass Filter for your data');
           display(['2a- The associated frequency is' num2str(lowPass_freq) ' and an order of ' num2str(lowPass_order)  ])
        end
        if init_parameter.high_pass_filter==1
           display(' 3- You have selected the High Pass Filter for your data');
           display(['3a- The associated frequency is ' num2str(highPass_freq) ' and an order of ' num2str(highPass_order)  ])
        end
        
        if init_parameter.band_pass_filter==1
           display(' 4- You have selected the band Pass Filter for your data');
           display(['4a- The associated frequency is ' num2str(bandPass_freq) ' and an order of ' num2str(bandPass_order)  ])
        end
        
        if init_parameter.notch_filter==1
           display(' 5- You have selected the Notch Filter for your data');
           display(['5a- The associated frequency is ' num2str(notch_freq) ' order of ' num2str(notch_order) ' width of ' num2str(notch_band_width)  ])
        end
        
        if init_parameter.wavelet_transform==1
           display(' 6- You have selected the Wavelets method');
           display(['6a- The associated frequency is ' num2str([fmin fmax]) '; type ' wavelet_type '; step frequency of ' num2str(step_frequency) ' Hz' ])
        end
                
        display('======> Next Step : Run the Script Sigma_filter_parameter to compute the frequency filters ..." ')
    end


    if init_parameter.sigma_write_logFile==1; 
          cd(init_parameter.sigma_directory)
            cd(init_parameter.data_output)
            mkdir(init_parameter.session_name)
                cd(init_parameter.session_name)
                    logFilename=init_parameter.logFilename;
         fid = fopen(logFilename,'a');
                
                fprintf(fid,'\n %s','=======================   Information : sigma_frequency_initialisation       ==================');
                fprintf(fid,'\n %s',['0- You have selected the frquency bounds between ' num2str([fmin fmax]);]);
                if sum(init_parameter.apply_filter)>0
                fprintf(fid,'\n %s',['1a- You have selected the following frquency bands  : ' ]);
                   for ind=1:length(init_parameter.selected_band)
                       fprintf(fid,'\n %s',[ num2str(freq_bands(ind,1)) '   ' num2str(freq_bands(ind,2)) ' Hz' ]);
                       %fprintf(fid,'\n %s', bands_list(ind,:));
                   end

                %fprintf(fid,'\n %s',['1a- You have selected the following frquency bands  ' num2str(freq_bands(selected_band,:))]);
                %fprintf(fid,'\n %s',['1b- You have selected the following frquency list  ' bands_list(selected_band,:);]);
                %fprintf(fid,'\n %s',['1c- You have selected the order of  ' num2str(filter_order); ' for the pass-band filters']);
                end
                if init_parameter.low_pass_filter==1
                fprintf(fid,'\n %s',' 2- You have selected the Low Pass Filter for your data');
                fprintf(fid,'\n %s',['2a- The associated frequency is' num2str(lowPass_freq) ' and an order of ' num2str(lowPass_order)  ]);
                end
                if init_parameter.high_pass_filter==1
                fprintf(fid,'\n %s',' 3- You have selected the High Pass Filter for your data');
                fprintf(fid,'\n %s',['3a- The associated frequency is' num2str(highPass_freq) ' and an order of ' num2str(highPass_order)  ]);
                end

                if init_parameter.band_pass_filter==1
                fprintf(fid,'\n %s',' 4- You have selected the band Pass Filter for your data');
                fprintf(fid,'\n %s',['4a- The associated frequency is' num2str(bandPass_freq) ' and an order of ' num2str(bandPass_order)  ]);
                end

                if init_parameter.notch_filter==1
                fprintf(fid,'\n %s',' 5- You have selected the Notch Filter for your data');
                fprintf(fid,'\n %s',['5a- The associated frequency is' num2str(notch_freq) ' order of ' num2str(notch_order) ' width of ' num2str(notch_band_width)  ]);
                end

                if init_parameter.wavelet_transform==1
                fprintf(fid,'\n %s',' 6- You have selected the Wavelets method');
                fprintf(fid,'\n %s',['6a- The associated frequency is' num2str([fmin fmax]) '; type ' wavelet_type '; step frequency of ' num2str(step_frequency) ' Hz' ]);
                end

                fprintf(fid,'\n %s','======> Next Step : Run the Script Sigma_filter_parameter to compute the frequency filters ..." ');
                
         fclose(fid);
         cd(init_parameter.sigma_directory)
    end

    %% Close the diary file 
    diary off
end