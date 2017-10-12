function [ score, files, message] = DL_data_compatibility(handles)

% If data path is not correct
if( isempty(handles.init_parameter.data_location) > 0.5)
    score = 0;
    message = 'no file path selected';
    files = [];
    disp('no file path selected')
    
    % if data format is .mat
else
    % determination of file format
    files = dir( [handles.init_parameter.data_location, '*.mat']);
    if( length(files) < 0.5 ) % if no file in .mat format
        score = 0;
        message = 'data are not in the .mat format';
        disp('data are not in the .mat format')
    else
        % Select only the relevant files
        h = waitbar(0,'Data loading');
        for cF = length(files):-1:1
            data = load(files(cF).name, 's_EEG');
            waitbar((length(files) - cF)/length(files))
            if (numel(fieldnames(data)) < 0.5)
                files(cF) = [];
            end
        end
        close(h) 
        if(length(files) > 0.5)
            score = 1;
            message = 'Data are correct';
        else
            score = 0;
            message = 'Data doesn''t contain s_EEG';
        end
    end
    
end