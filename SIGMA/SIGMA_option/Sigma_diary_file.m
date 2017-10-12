function Sigma_diary_file(init_parameter)
% This function is part of the SIGMA toolbox
% This function writ a diary file as an output file 
%% Writ the Diary file
if init_parameter.sigma_write_diaryFile==1; 
    cd(init_parameter.sigma_directory)
        cd(init_parameter.data_output)
        mkdir(init_parameter.session_name)
            cd(init_parameter.session_name)
            diary(init_parameter.diaryFilename)
    cd(init_parameter.sigma_directory)            
end
end