function Sigma_save_session(session_name,varargin)

%function [values, names]=Sigma_save_session(varargin)
%%%------------------------------------------------------------------------
% function [values, names]=Sigma_save_session(varargin)
%   Function task:
%   This function  save the data of current session specified on varargin
%   It creat or updat a mat file with the varagin data
%
% varargin =(init_parameter,init_method,features_results,performances_results,selected_model)
% The maximum size of the input arg is 5 (for instance)
% The data to save should repect the exact word as follow :
%   features_results
%   init_method
%   init_parameter
%   performances_results
%   selected_model
% The order is not important on the input varargin
%--------------------------------------------------------------------------
%
%   Sections :
%       Section 1 - Check th inputs
%       Section 2 - Get the input data
%       Section 3 - Save/updat the data of the current session
%
%   Main Variables
%       None
%
%   Dependencies
%
%
%   NB: this code is copyrighted.
%   Please refer to copyright info in the file footer.
%%%------------------------------------------------------------------------


%% Section 1 : Check th inputs
%     minargs=1; % at least one arguments
%     maxargs=6; % The maxumum for instance
%     narginchk(minargs, maxargs)

%% Section 2 :  Get the name of the input arguments
%session_name=varargin{1};
%session_name
%values = varargin(:,2:end);
values = varargin;
names = cell(size(varargin));
for iArg = 1:length(values)+1
    names{iArg} = inputname(iArg);
end
%%% Get the name of the inputs
%data_to_save=[];
data_to_save=cell(size(values));
for ind=1:length(values)
    % Get init_parameter
    if strcmp(names{ind+1},'init_parameter')
        indice=ind;
        init_parameter=values{indice};
        %sigma_directory=init_parameter.sigma_directory;
        %data_to_save=[data_to_save {'init_parameter'}];
        data_to_save{indice}={'init_parameter'};
    end
    % Get init_method
    if strcmp(names{ind+1},'init_method')
        indice=ind;
        init_method=values{indice};
        %data_to_save=[data_to_save { 'init_method'}];
        data_to_save{indice}={'init_method'};
        
    end
    % Get features_results
    if strcmp(names{ind+1},'features_results')
        indice=ind;
        features_results=values{indice};
        %data_to_save=[data_to_save {'features_results'}];
        data_to_save{indice}={'features_results'};
        
    end
    % Get performances_results
    if strcmp(names{ind+1},'performances_results')
        indice=ind;
        performances_results=values{indice};
        %data_to_save=[data_to_save {'performances_results'}];
        data_to_save{indice}={'performances_results'};
        
    end
    % selected_model
    if strcmp(names{ind+1},'selected_model')
        indice=ind;
        selected_model=values{indice};
        %data_to_save=[data_to_save { 'selected_model'}];
        data_to_save{indice}={'selected_model'};
    end
end

%% Section 3 : Save The session

% split path and name
[pathstr,name,~] = fileparts(session_name);
%       disp(name)
if (isempty(pathstr) < 0.5);
    
    cd(pathstr);
    cd (name)

    savelist = {};
    for ind=1:length(data_to_save)
        S=char(data_to_save{ind});
        savelist = [savelist,{ S}];
    end
    %savelist = [savelist, {'w'}];
    save([name '.mat'],savelist{:});
    %
    %                     if ind==1
    %                     save([name '.mat'],S);
    %                     else
    %                     save([name '.mat'],S,'-append');
    %                     end
    %if(init_parameter.sigma_show_comment==1)
    %    display(['    SIGMA>> The variable "' names{ind} '" was successfuly saved for this session'])
    % end
    for ind=1:length(data_to_save)
        display(['      SIGMA>> The variable "' savelist{ind} '" was successfuly saved for this session'])
        
    end
    
    cd(init_parameter.sigma_directory)
else
    disp('bad path')
    
    cd(init_parameter.full_session_name);
    %cd (name)
    
    savelist = {};
    for ind=1:length(data_to_save)
        S=char(data_to_save{ind});
        savelist = [savelist,{ S}];
    end
    %savelist = [savelist, {'w'}];
    save([name '.mat'],savelist{:});
    for ind=1:length(data_to_save)
        display(['      SIGMA>> The variable "' savelist{ind} '" was successfuly saved for this session'])
        
    end
    
    cd(init_parameter.sigma_directory)
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