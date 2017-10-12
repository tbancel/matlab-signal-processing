%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the " Variance time domaine  "
%==========================================================================

o_variance_ch=[];
temp0=[];

if (Nepochs==1)
o_variance_epo=[];
if Nsubj==1
o_time_variance=[];
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

o_time_variance0 = var(fdata);       
o_variance_ch =[o_variance_ch,o_time_variance0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
o_time_variance0 = var(i_EEG);
o_variance_ch =[o_variance_ch,o_time_variance0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end
% o_time_variance0=var(i_EEG);
% o_variance_ch =[o_variance_ch,o_time_variance0];

clear o_time_variance0
end
o_variance_epo=o_variance_ch';  
o_time_variance=[o_time_variance o_variance_epo];

features_results.o_time_variance=o_time_variance;

if ((Nsubj==1)&&(Nepochs==1))
features_results.o_time_variance_band=temp0;
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

%std_deviation_fft_fft(X)
