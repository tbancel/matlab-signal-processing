function Sigma_related_toolbox_and_file(mfilename)
%%%------------------------------------------------------------------------
% Sigma_related_toolbox(mfilename) 
% This function list all the functions/files and tollboxes used by the current matfile
% defined by the function mfilename, this function gives the name of the currently running code 


if ~isempty(mfilename)

        name_of_this_file=mfilename;
        %path_of_this_file = mfilename('fullpath');
        [FileList ,ProductList]= matlab.codetools.requiredFilesAndProducts(name_of_this_file);


        if ~isempty(FileList)
            disp('*********************************************************************');
            disp('------------------------  The re quired file(s)  ----------------------');
            disp(['SIGMA>> To use "'  mfilename '" correctely, you need the following files :'] );
            for id2=1:length(FileList)
                disp(FileList(id2))
            end
        end


        if ~isempty(ProductList)
            disp('*********************************************************************');
            disp('------------------------  The required toolbox(es)  ----------------------');
            disp(['SIGMA>> To use "'  mfilename '" correctely, you need the following products :'] );
            for id2=1:length(ProductList)
                disp(ProductList(id2))
            end
        end
    disp('*********************************************************************');
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
% % %   Creation Date : 27/06/2015
% % %   Updates and contributors :
% % %       dd/mm/yyyy Contributor description
% % %
% % %   Citation: [creator and contributor names], SigmaBOX, available 
% % %   online 2017.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2017
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------
