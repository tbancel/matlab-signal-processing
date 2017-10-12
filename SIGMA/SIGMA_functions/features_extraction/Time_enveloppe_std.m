function features_results=Time_enveloppe_std(init_parameter,features_results,s_EEG,Nsubj,Nepochs,Nmethode);
%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "mean_norm_enveloppe per epoch  "
%==========================================================================

o_time_enveloppe_std_ch=[];
temp0=[];

if (Nepochs==1)
o_time_enveloppe_std_epo=[];
if Nsubj==1
features_results.o_time_enveloppe_std=[];
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

%     o_std_time_enveloppe_std_value0 = std(sqrt(real(hilbert(fdata)).^2+imag(hilbert(fdata)).^2));    
o_time_enveloppe_std_value0=std(abs( hilbert(fdata) ).^2);
o_time_enveloppe_std_ch =[o_time_enveloppe_std_ch,o_time_enveloppe_std_value0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
% o_time_enveloppe_std_value0 = std(sqrt(real(hilbert(i_EEG)).^2+imag(hilbert(i_EEG)).^2));
o_time_enveloppe_std_value0=std(abs( hilbert(i_EEG) ).^2);
o_time_enveloppe_std_ch =[o_time_enveloppe_std_ch,o_time_enveloppe_std_value0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end
% o_time_enveloppe_std_value0 = std(sqrt(real(hilbert(i_EEG)).^2+imag(hilbert(i_EEG)).^2));
% o_time_enveloppe_std_ch =[o_time_enveloppe_std_ch,o_time_enveloppe_std_value0];

clear o_time_enveloppe_std_value0
end
o_time_enveloppe_std_epo=o_time_enveloppe_std_ch';  
features_results.o_time_enveloppe_std=[features_results.o_time_enveloppe_std o_time_enveloppe_std_epo];

%features_results.o_time_enveloppe_std=o_time_enveloppe_std;


if ((Nsubj==1)&&(Nepochs==1))
features_results.o_time_enveloppe_std_band=temp0;
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

%amp_enveloppe(X)
end
