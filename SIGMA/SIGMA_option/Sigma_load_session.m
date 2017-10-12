function Sigma_load_session(session_name)
%function [varargout]=Sigma_load_session(session_name)
%%%------------------------------------------------------------------------
% session_name : contain all the path and the name of the file to load
% example : 
% session_name='C:\Users\Takfarinas\Documents\Session_21-Jun-2017_dataTests\dataTests.mat';

%   NB: this code is copyrighted. 
%   Please refer to copyright info in the file footer.
%%%------------------------------------------------------------------------    

  
[pathstr,name,ext] = fileparts(session_name);
   
if strcmp(ext,'.mat')
    this_path=pwd;
    cd(pathstr)        
        session_data=load([name '.mat']);
        names = fieldnames(session_data);
    display('SIGMA>> The loaded session contains the following data : ' )
    for ind=1:length(names)
            display(['         >> ' names{ind}])
            % Get init_parameter
            if strcmp(names{ind},'init_parameter')
                %session_data.init_parameter=init_parameter; 
                assignin('base','init_parameter',session_data.init_parameter')
            end
            % Get init_method
            if strcmp(names{ind},'init_method')
                %session_data.init_method=init_method; 
                assignin('base','init_method',session_data.init_method')
            end        
            % Get features_results
            if strcmp(names{ind},'features_results')
                %session_data.features_results=features_results; 
                assignin('base','features_results',session_data.features_results')                
            end
            % Get performances_results
            if strcmp(names{ind},'performances_results')            
                %session_data.performances_results=performances_results;  
                assignin('base','performances_results',session_data.performances_results')
            end
            % selected_model
            if strcmp(names{ind},'selected_model')
                %session_data.selected_model=selected_model;
                assignin('base','selected_model',session_data.selected_model')
            end
    end 
    
    %evalin( 'base', 'clear(''init_parameter_sigma_eegfc'')' )
    cd(this_path)
else
    warning('SIGMA>> The selected data is not a mat File ... ');    
    return
end
    


%% outputs 
%session_name=session_name;

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


%end