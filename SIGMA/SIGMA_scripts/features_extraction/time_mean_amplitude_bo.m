%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "o_mean_time_between_oscillation"
%==========================================================================
% o_mean_amplitude_between_oscillation
%mean
% This script compute the sample_entropy for each channels and epoches


o_time_mean_amplitude_bo_ch=[];
temp0=[];

if (Nepochs==1)
o_time_mean_amplitude_bo_epo=[];
if Nsubj==1
o_time_mean_amplitude_bo=[];
end
end


% Apply a filter here according to the choice of the user
apply_filter=init_parameter.apply_filter(Nmethode);

for Nchannel=1:size(s_EEG.data,1)                   
i_EEG=s_EEG.data(Nchannel,:,Nepochs);

if (apply_filter==1)
for Nband=1:init_parameter.nb_bands
filt=init_parameter.filt_band_param;
fdata = filter(filt(Nband),i_EEG);

instant_of_changes=find(diff(sign(diff(fdata)))~=0);

o_time_mean_amplitude_bo0 = mean(abs(diff(fdata(instant_of_changes))));       
o_time_mean_amplitude_bo_ch =[o_time_mean_amplitude_bo_ch,o_time_mean_amplitude_bo0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
o_time_mean_amplitude_bo0 = mean(abs(diff(i_EEG(instant_of_changes))));
o_time_mean_amplitude_bo_ch =[o_time_mean_amplitude_bo_ch,o_time_mean_amplitude_bo0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end
% instant_of_changes=find(diff(sign(diff(i_EEG)))~=0);
% o_time_mean_amplitude_bo0=mean(abs(diff(i_EEG(instant_of_changes))));
% o_time_mean_amplitude_bo_ch =[o_time_mean_amplitude_bo_ch,o_time_mean_amplitude_bo0];
clear o_time_mean_amplitude_bo0
end
o_time_mean_amplitude_bo_epo=o_time_mean_amplitude_bo_ch';  
o_time_mean_amplitude_bo=[o_time_mean_amplitude_bo o_time_mean_amplitude_bo_epo];

features_results.o_time_mean_amplitude_bo=o_time_mean_amplitude_bo;

if ((Nsubj==1)&&(Nepochs==1))
features_results.o_time_mean_amplitude_bo_band=temp0;
end    
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
