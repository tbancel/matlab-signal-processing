%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "mean value for each channels"
%==========================================================================
% This script compute the sample_entropy for each channels and epoches
o_synchro_phase_locking_ch=[];
temp0=[];
if (Nepochs==1)
o_synchro_phase_locking_epo=[];
if Nsubj==1 
o_synchro_phase_locking=[];
end
end

% Apply a filter here according to the choice of the user
apply_filter=init_parameter.apply_filter(Nmethode);
%% Only for the synchronisation méthodes
cpt=1; % compteur de combinaison
indice_combinaison=1:size(s_EEG.data,1)*(size(s_EEG.data,1)-1)/2;
channels_combinaison=combnk(1:size(s_EEG.data,1),2);
for Nchannel1=1:size(s_EEG.data,1)   
i_EEG_1=s_EEG.data(Nchannel1,:,Nepochs);
for Nchannel2 = Nchannel1+1:nb_channel   

i_EEG_2=s_EEG.data(Nchannel2,:,Nepochs);

if (apply_filter==1)
for Nband=1:init_parameter.nb_bands
filt=init_parameter.filt_band_param;
fdata_1 = filter(filt(Nband),i_EEG_1);
fdata_2 = filter(filt(Nband),i_EEG_2);                          

h1=hilbert(fdata_1);
h2=hilbert(fdata_2);
[phase1]=unwrap(angle(h1));
[phase2]=unwrap(angle(h2));
n = 1; m = 1;
RP=n*phase1-m*phase2; % relative phase
plv=abs(sum(exp(1i*RP))/length(RP));

o_synchro_phase_locking0=plv;
o_synchro_phase_locking_ch=[o_synchro_phase_locking_ch; o_synchro_phase_locking0];

% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) indice_combinaison(cpt) init_parameter.selected_band(Nband) ];
end
end
else

h1=hilbert(i_EEG_1);
h2=hilbert(i_EEG_2);
[phase1]=unwrap(angle(h1));
[phase2]=unwrap(angle(h2));
n = 1; m = 1;
RP=n*phase1-m*phase2; % relative phase
plv=abs(sum(exp(1i*RP))/length(RP));

o_synchro_phase_locking0=plv;
o_synchro_phase_locking_ch=[o_synchro_phase_locking_ch; o_synchro_phase_locking0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) indice_combinaison(cpt) nan];
%cpt=cpt+1;
end    
end
cpt=cpt+1;
end
end
o_synchro_phase_locking_epo=o_synchro_phase_locking_ch;  
o_synchro_phase_locking=[o_synchro_phase_locking o_synchro_phase_locking_epo];
features_results.o_synchro_phase_locking=o_synchro_phase_locking;
features_results.channels_combinaison=channels_combinaison;
if ((Nsubj==1)&&(Nepochs==1))
features_results.o_synchro_phase_locking_band=temp0;
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
