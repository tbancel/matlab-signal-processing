function init_parameter=Sigma_create_session_name(init_parameter,name_session)
%% TODO creat the help
% This function creat a session for SIGMA toolbox wit h a name of the
% session and a name of the output file
   
%% Create/Specify the name of the session/the Log File and the diary File 
    if strcmp(name_session,'default') || strcmp(name_session,'') 
        str = char(datetime); % creat the name of the output files
        % creat the default session name
        session_name=['Session_' str(1:end-9) '_' str(end-7:end-6) str(end-4:end-3) str(end-1:end)];
    else
        session_name=name_session;
    end
    
    %% Creat the name of the 
    % log file name
    logFilename=['Sigma_logFile_' session_name '.txt'];
    % diary file name    
    diaryFilename=['Sigma_diaryFile_' session_name '.txt'];
    %% Save in the initialisation parameters
    init_parameter.session_name=session_name;
    init_parameter.logFilename=logFilename;
    init_parameter.diaryFilename=diaryFilename;
    
    
end