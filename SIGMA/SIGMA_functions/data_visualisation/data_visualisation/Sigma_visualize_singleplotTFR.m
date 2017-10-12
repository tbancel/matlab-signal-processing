function Sigma_compute_ERP_visualization(init_parameter_eegfc)
%==========================================================================
%% This script is part of the BCI toolbox, it's used by the toolbox to 
%prepare data in order to be used by the eegLab functions
%==========================================================================


[eeg2,init] = Sigma_converting_data(init_parameter_eegfc);
eeg = struct('EEG',eeg2);
EEG = Sigma_converting_data2(eeg);

Sigma_visualisating_ERP(EEG);


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