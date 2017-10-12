function features_results=Time_zero_crossing(init_parameter,~,features_results,s_EEG,Nsubj,Nepochs,Nmethode)

%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "mean_norm_enveloppe per epoch  "
%==========================================================================

o_time_zero_crossing_ch=[];
temp0=[];

if (Nepochs==1)
o_time_zero_crossing_epo=[];
if Nsubj==1
features_results.o_time_zero_crossing=[];
end
end

%% défine the function zci (find on line and checked on small signal)
zci = @(v) find(v(:).*circshift(v(:), [-1 0]) <= 0);
% with this function it's an approximation and not the exact value of the
% zero crossing. Ask françois for best code


% Apply a filter here according to the choice of the user
apply_filter=init_parameter.apply_filter(Nmethode);

for Nchannel=1:size(s_EEG.data,1)                   
i_EEG=s_EEG.data(Nchannel,:,Nepochs);

if (apply_filter==1)
for Nband=1:init_parameter.nb_bands
filt=init_parameter.filt_band_param;
fdata = filter(filt(Nband),i_EEG);

o_time_zero_crossing_value0 = length(zci(fdata));       
o_time_zero_crossing_ch =[o_time_zero_crossing_ch,o_time_zero_crossing_value0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
o_time_zero_crossing_value0 = length(zci(i_EEG));
o_time_zero_crossing_ch =[o_time_zero_crossing_ch,o_time_zero_crossing_value0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end
clear o_mean_value0
% zx=(zci(i_EEG))
% o_time_zero_crossing_value0 =length(zci(i_EEG));
% o_time_zero_crossing_ch =[o_time_zero_crossing_ch,o_time_zero_crossing_value0];

%% checking the results and check it with François
% t = 1:length(i_EEG);
% figure(1)
% plot(t, i_EEG, '-r')
% hold on
% plot(t(zx), i_EEG(zx), 'bp')
% hold off
% grid
% legend('Signal', 'Approximate Zero-Crossings')


clear o_time_zero_crossing_value0
end
o_time_zero_crossing_epo=o_time_zero_crossing_ch';  
features_results.o_time_zero_crossing=[features_results.o_time_zero_crossing o_time_zero_crossing_epo];

%features_results.o_time_zero_crossing=o_time_zero_crossing;

if ((Nsubj==1)&&(Nepochs==1))
features_results.o_time_zero_crossing_band=temp0;
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

%amp_zero_crossing(X)
