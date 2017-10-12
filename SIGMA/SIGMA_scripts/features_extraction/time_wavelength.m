%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "wavelength value  "
%==========================================================================

% This script compute the sample_entropy for each channels and epoches

o_wavelength_ch=[];temp0=[];
if (Nepochs==1)
o_wavelength_epo=[];
if Nsubj==1
o_time_wavelength=[];
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

o_time_wavelength0 = sum( sqrt( (diff(fdata)).^2 + 1 ) );
o_wavelength_ch =[o_wavelength_ch,o_time_wavelength0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
o_time_wavelength0 = sum( sqrt( (diff(i_EEG)).^2 + 1 ) );
o_wavelength_ch =[o_wavelength_ch,o_time_wavelength0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end

% o_time_wavelength0 = sum( sqrt( (diff(i_EEG)).^2 + 1 ) );
% o_wavelength_ch =[o_wavelength_ch,o_time_wavelength0];
clear o_time_wavelength0
end
o_wavelength_epo=o_wavelength_ch';  
o_time_wavelength=[o_time_wavelength o_wavelength_epo];
features_results.o_time_wavelength=o_time_wavelength;


if ((Nsubj==1)&&(Nepochs==1))
features_results.o_time_wavelength_band=temp0;
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

%wavelength(X)
