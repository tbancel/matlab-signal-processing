function Sigma_copy_relative(matfile,destination)
%%%------------------------------------------------------------------------
% function sigma_copy_relative(source,destination)
% Copy file or folder used by the matfile : copies the file or folder source to the file or folder destination. 
%If source is a file, destination can be a file or a folder. If source is a folder, destination
% must also be a folder. If source is a folder or specifies multiple files and destination does not exist,
% copyfile attempts to create destination.
% All the input are strigs/ char
% It's copy all the relative function used by the matfile to the desired
% destination specifyed by destination

%%% 

%matfile='Sigma_main_test0.m';
[FileList ,ProductList]= matlab.codetools.requiredFilesAndProducts(matfile);
% FileList : contains all the related file to the matfile
% ProductList : contains the related product (toolbox) used by matfile

for id=1:length(FileList)
    source=FileList{id};
    status =copyfile(source,destination);
    if status==1
        disp(['SIGMA>> The file ' num2str(id) '/' num2str(length(FileList)) ' was succesfully copied to the destination']);
    else
        warning(['SIGMA>> The file '  num2str(id) ' is not copied']);
    end
end

if ~isempty(ProductList)
    disp(['To use "'  matfile '" correctely, you need the following products :'] );
    for id2=1:length(ProductList)
        disp(ProductList(id2))
    end
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


