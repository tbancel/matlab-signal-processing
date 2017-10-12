function features_results=Time_skewness(init_parameter,~,features_results,s_EEG,Nsubj,Nepochs,Nmethode)
%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "skewness value  "
%==========================================================================
% This script compute the sample_entropy for each channels and epoches

o_skewness_ch=[];temp0=[];
if (Nepochs==1)
o_skewness_epo=[];
if Nsubj==1
features_results.o_time_skewness=[];
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

o_time_skewness0 = skewness(fdata);       
o_skewness_ch =[o_skewness_ch,o_time_skewness0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
o_time_skewness0 = skewness(i_EEG);
o_skewness_ch =[o_skewness_ch,o_time_skewness0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end

clear o_time_skewness0
end
o_skewness_epo=o_skewness_ch';  
features_results.o_time_skewness=[features_results.o_time_skewness o_skewness_epo];
%features_results.o_time_skewness=o_time_skewness;


if ((Nsubj==1)&&(Nepochs==1))
features_results.o_time_skewness_band=temp0;
end    

%% Probleme : the o_sample_entropy_epo should be deleted at the end of the execution

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

%skewness(X)
