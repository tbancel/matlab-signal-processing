function features_results=Time_slope_signe_change(init_parameter,~,features_results,s_EEG,Nsubj,Nepochs,Nmethode)

%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "mean value for each channels"
%==========================================================================

%mean
% This script compute the sample_entropy for each channels and epoches


o_time_slope_signe_change_ch=[];
temp0=[];
if (Nepochs==1)
o_time_slope_signe_change_epo=[];
if Nsubj==1
features_results.o_time_slope_signe_change=[];
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

o_time_slope_signe_change0 = length(find(diff(sign(diff(fdata)))~=0));       
o_time_slope_signe_change_ch =[o_time_slope_signe_change_ch,o_time_slope_signe_change0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
o_time_slope_signe_change0 = length(find(diff(sign(diff(i_EEG)))~=0));
o_time_slope_signe_change_ch =[o_time_slope_signe_change_ch,o_time_slope_signe_change0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end


clear o_time_slope_signe_change0
end
o_time_slope_signe_change_epo=o_time_slope_signe_change_ch';  
features_results.o_time_slope_signe_change=[features_results.o_time_slope_signe_change o_time_slope_signe_change_epo];

%features_results.o_time_slope_signe_change=o_time_slope_signe_change;

if ((Nsubj==1)&&(Nepochs==1))
features_results.o_time_slope_signe_change_band=temp0;
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
