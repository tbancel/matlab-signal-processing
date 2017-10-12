function  Sigma_visualisating_data(init_parameter)
%==========================================================================
%% This function is part of the BCI toolbox, it's used by the main function to call the Data-visualization GUI.
%==========================================================================
%if the data have to be displayed

%Sigma_related_toolbox_and_file(mfilename)
%destination='C:\Users\Takfarinas\Dropbox\SIGMA\SIGMA_external\sigma_econnectome';
%Sigma_copy_relative(mfilename,destination)


 if isfield(init_parameter, 'sigma_display_data') 
     if init_parameter.sigma_display_data==1
     %launch visualisation of data
%      Sigma_related_toolbox_and_file(mfilename)
     sigma_eegfc(init_parameter);
     end
 else
     disp('SIGMA>> Visulisation data is not selected')
 end

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