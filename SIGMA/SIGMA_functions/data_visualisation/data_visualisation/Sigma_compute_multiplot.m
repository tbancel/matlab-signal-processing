function Sigma_compute_multiplot(  init_parameter_eegfc,start_time,end_time )
%==========================================================================
%% This script is part of the BCI toolbox, it's used by the toolbox to 
%prepare data in order to be used by the eegLab functions
%==========================================================================
%%The input is an init_parameters copy in witch all informations needed are
%strored

% start_time : information of the start time to plot. it's the start of the
% currently window

% end_time : Information on the end_time to plot.it's the end of the
% currently diplayed window

%the function has no outpout since it's just used for plotting
[eeg2,init] = Sigma_converting_data(init_parameter_eegfc);
eeg = struct('EEG',eeg2);
EEG = Sigma_converting_data2(eeg);




Sigma_visualisating_multiplot(EEG,start_time,end_time);




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
% % %   File modified by Joffrey THOMAS
% % %   Creation Date : 08/09/2017
% % %   Updates and contributors :
% % %
% % %   Citation: [creator and contributor names], comprehensive BCI
% % %             toolbox, available online 2016.
% % %           
% % %   Contact info : joffrey.thomas.18@eigsi.fr        
% % %   Copyright of the contributors, 2016
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------