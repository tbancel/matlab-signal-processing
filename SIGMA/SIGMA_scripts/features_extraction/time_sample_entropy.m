%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "Sample Entropy"
%==========================================================================
% display(['Method N°: ' num2str(init_method(method(Nmethode)).method_number)])
% display(['Method name: ' init_method(method(Nmethode)).method_name])
%amp_sample_entropy
% This script compute the amp_sample_entropy for each channels and epoches
% dim=2; % dim     : embedded dimension see the fc_time_sample_entropy original code from aldo

o_time_sample_entropy_ch=[];
temp0=[];
if (Nepochs==1)
o_time_sample_entropy_epo=[];
if Nsubj==1
o_time_sample_entropy=[];
end
end

% Initialisation of the method
dim=init_method(3).dimension;
tau=init_method(3).tau;
r=init_method(3).tolerance;


% Apply a filter here according to the choice of the user
apply_filter=init_parameter.apply_filter(Nmethode);

for Nchannel=1:size(s_EEG.data,1)                   
i_EEG=s_EEG.data(Nchannel,:,Nepochs);

if (apply_filter==1)
for Nband=1:init_parameter.nb_bands
filt=init_parameter.filt_band_param;
fdata = filter(filt(Nband),i_EEG);

o_time_sample_entropy0 = fc_sample_entropy( dim, r*std(fdata), fdata, tau );       
o_time_sample_entropy_ch =[o_time_sample_entropy_ch,o_time_sample_entropy0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
o_time_sample_entropy0 = fc_time_sample_entropy( dim, r*std(i_EEG), i_EEG, tau );;
o_time_sample_entropy_ch =[o_time_sample_entropy_ch,o_time_sample_entropy0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end

% o_time_sample_entropy0 = fc_time_sample_entropy( dim, r*std(i_EEG), i_EEG, tau );
% o_time_sample_entropy_ch =[o_time_sample_entropy_ch,o_time_sample_entropy0];
clear o_time_sample_entropy0
end
o_time_sample_entropy_epo=o_time_sample_entropy_ch';  
o_time_sample_entropy=[o_time_sample_entropy o_time_sample_entropy_epo];

features_results.o_time_sample_entropy=o_time_sample_entropy;

if ((Nsubj==1)&&(Nepochs==1))
features_results.o_time_sample_entropy_band=temp0;
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
% % %   File created by 
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
