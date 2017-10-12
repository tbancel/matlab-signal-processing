%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "mean value for each channels"
%==========================================================================

%mean
% This script compute the sample_entropy for each channels and epoches
o_spectral_flatness_ch=[];
temp0=[];
if (Nepochs==1)
o_spectral_flatness_epo=[];
if Nsubj==1 
o_spectral_flatness=[];
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
pxx = periodogram(fdata);
num=geomean(pxx);
den=mean(pxx);
spf=num/den ;    
o_spectral_flatness0 = spf;       
o_spectral_flatness_ch =[o_spectral_flatness_ch,o_spectral_flatness0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else

pxx = periodogram(i_EEG);
num=geomean(pxx);
den=mean(pxx);
spf=num/den ;    
o_spectral_flatness0 = spf;
o_spectral_flatness_ch =[o_spectral_flatness_ch,o_spectral_flatness0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end
clear o_spectral_flatness0
end
o_spectral_flatness_epo=o_spectral_flatness_ch';  
o_spectral_flatness=[o_spectral_flatness o_spectral_flatness_epo];
features_results.o_spectral_flatness=o_spectral_flatness;

if ((Nsubj==1)&&(Nepochs==1))
features_results.o_spectral_flatness_band=temp0;
end    


%% Here 


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
