%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "Fourrier fourier_power spectrum"
%==========================================================================
% display(['Method N°: ' num2str(init_method(method(Nmethode)).method_number)])
% display(['Method name: ' init_method(method(Nmethode)).method_name])

% Initialisation of the vectors
o_fourier_power_ch=[];
%o_fourier_power_epo=nan(1*size(s_EEG.data,1)*length(init_method(1).band_start)*2,size(s_EEG.data,3)); % o_fourier_power_epo : matrice containing the fourier_power (absolute and relative) per channels size = 1*(Nb_Channel*Nb_Bandes*2) 
if Nepochs==1
o_fourier_power_epo=[]; % Initialisation of the vector
if Nsubj==1
o_fourier_power=[];
fourier_power_type=[];
temp0=[];
end
end

% s_EEG.data = rand(size(s_EEG.data)); %                           
% Comopute the fourier_power spectrum for each channel (over each epochs)                    

% Apply a filter here according to the choice of the user
apply_filter=init_parameter.apply_filter(Nmethode);
% Initialisation
s_EEG.sampling_rate
sampling_rate=init_parameter.sampling_rate;
c_window=sampling_rate/init_method(Nmethode).pwelch_width; % length of the Hamming Windows

for Nchannel=1:size(s_EEG.data,1)  
%display(['Channel N°: ' num2str(Nchannel)])

i_EEG=s_EEG.data(Nchannel,:,Nepochs);
%% Try random data
if isfield('random_data',init_parameter)
    if init_parameter.random_data==1
    disp('random data... to test the CV')
    i_EEG=randn(size(i_EEG));
    end
end

%% Comput all the fourier_power on all bands
min_frequency = min(init_method(Nmethode).band_start); %the minimum frequency in the range of interest
max_frequency = max(init_method(Nmethode).band_end); %the maximum frequency in the range of interest

[spectra,fr] = pwelch(i_EEG,c_window,[],min_frequency:init_method(Nmethode).frequency_step:max_frequency,sampling_rate);
totalfourier_power = trapz(fr,spectra);

%% Include the all fourier_power as a feature 
if init_method(1).all_fourier_power==1
o_fourier_power_ch =[o_fourier_power_ch,totalfourier_power];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel 0];
fourier_power_type=[fourier_power_type;0];
end 
end

%% Apply filter !
if (apply_filter==1)
for Nband=1:init_parameter.nb_bands
[spectra,fr] = pwelch(i_EEG,c_window,[],...
init_method(Nmethode).band_start(Nband):init_method(Nmethode).frequency_step:init_method(Nmethode).band_end(Nband),sampling_rate);
o_fourier_power_abs = trapz(fr,spectra);
o_fourier_power_ch =[o_fourier_power_ch,o_fourier_power_abs];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband)];
fourier_power_type=[fourier_power_type;1];
end

%% Computes relative fourier_power
if init_method(Nmethode).relative == 1 
o_fourier_power_re = o_fourier_power_abs/totalfourier_power;
o_fourier_power_ch =[o_fourier_power_ch,o_fourier_power_re];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband)];
fourier_power_type=[fourier_power_type;2];
end
end
end
end

end

o_fourier_power_epo=o_fourier_power_ch'; 
o_fourier_power=[o_fourier_power o_fourier_power_epo];
features_results.o_fourier_power=o_fourier_power;

if ((Nsubj==1)&&(Nepochs==1))
features_results.o_fourier_power_band=temp0;
features_results.o_fourier_power_band_infos={'N° Method','N° Channel','N° band'};
features_results.o_fourier_power_type=fourier_power_type;
features_results.o_fourier_power_type_infos={'0 : all bands, ';'1 : absolute, ';'2: relative, '};
features_results.o_fourier_power_band;
end


%% this script stores the data as follow :
% Subjects : |---------------------Subject 1 -----------------------||---------------------Subject 2 ------------- ... 
% channels : |   ch1    |   ch2    |   ch3    |   ...    |   chN    ||   ch1    |   ch2    |   ch3    |   ...    |   chN    |           
% fourier_power    : |Abs   rela|Abs   rela|Abs   rela|   ...    |Abs   rela||Abs   rela|Abs   rela|Abs   rela|   ...    |Abs   rela|



%%
% % %----------------------------------------------------------------------
% % %                  Brain Computer Interface team
% % % 
% % %                            _---~~(~~-_.
% % %                          _{        )   )
% % %                        ,   ) -~~- ( ,-' )_
% % %                       (  `-,_..`., )-- '_,)
% % %                      ( ` _)  (  -~( -_ `,  }
% % %                      (_-  _  ~_-~~~~`,  ,' )
% % %                        `~ -^(    __;-,((()))
% % %                              ~~~~ {_ -_(())
% % %                                     `\  }
% % %                                       { }
% % %   File created by Takfarinas MEDANI
% % %   Creation Date : 21/10/2016
% % %   Updates and contributors :
% % %
% % %   Citation: [creator and contributor names], comprehensive BCI
% % %             toolbox, available online 2016.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2016
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------
