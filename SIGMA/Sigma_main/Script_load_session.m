%% This is a script used to load the data for the current session
% I uses as a script in order to work in the same worspace
% Find a way to load the current data in the same workspas as a function

% To use it, you need just to specify the name of the session to loaed
% Use the Sigma function to load the data 
% [session_name,session_data]=Sigma_load_session(session_name);
Sigma_load_session(session_name)
% save the the data temporary in the current path
save('session_data.mat','-struct','session_data')
% % load the data to the work space as in current session and remove the
% temporary files from the directory and from the workspace
load('session_data.mat');delete('session_data.mat');clear session_data

% The data will be loaded in the current workspace and ready to use 


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
% % %   File created by T. MEDANI
% % %   Creation Date : 22/06/2017
% % %   Updates and contributors :
% % %
% % %   Citation: [creator and contributor names], SigmaBOX, available  
% % %   online 2017.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2017
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------
