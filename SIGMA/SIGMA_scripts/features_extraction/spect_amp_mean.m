%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the " mean_norm_spect  "
%==========================================================================

%mean
% This script compute the slop between two point of an EEG signal,
% 

o_spect_amp_mean_ch=[];
temp0=[];

if (Nepochs==1)
o_spect_amp_mean_epo=[];
if Nsubj==1
o_spect_amp_mean=[];
end
end

apply_filter=init_parameter.apply_filter(Nmethode);


for Nchannel=1:size(s_EEG.data,1)                   
i_EEG=s_EEG.data(Nchannel,:,Nepochs);

if (apply_filter==1)
for Nband=1:init_parameter.nb_bands
filt=init_parameter.filt_band_param;
fdata = filter(filt(Nband),i_EEG);

o_spect_amp_mean_value0 = mean(abs(mean(fdata)));       
o_spect_amp_mean_ch =[o_spect_amp_mean_ch,o_spect_amp_mean_value0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
o_spect_amp_mean_value0 = mean(abs(mean(i_EEG)));
o_spect_amp_mean_ch =[o_spect_amp_mean_ch,o_spect_amp_mean_value0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end
% o_spect_amp_mean_value0=mean(abs(spect(i_EEG)));
% o_spect_amp_mean_ch =[o_spect_amp_mean_ch,o_spect_amp_mean_value0];

clear o_spect_amp_mean_value0
end
o_spect_amp_mean_epo=o_spect_amp_mean_ch';  
o_spect_amp_mean=[o_spect_amp_mean o_spect_amp_mean_epo];

features_results.o_spect_amp_mean=o_spect_amp_mean;


if ((Nsubj==1)&&(Nepochs==1))
features_results.o_spect_amp_mean_band=temp0;
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
% % %   Creation Date : 03/11/2016
% % %   Updates and contributors :
% % %
% % %   Citation: [creator and contributor names], comprehensive BCI
% % %             toolbox, available online 2016.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2016
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------

%spect_amp_mean(X)
