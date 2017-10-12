function handles = DL_load_subjects(handles, hObject)

% Display data quality
[ score, files, message ] = DL_data_compatibility(handles);
% update init_parameter data compatibility
handles.init_parameter.data_compatibility = score;
disp(score)

set(handles.DL_Data_Compatibility_text, 'String', message);
if(score == 1)
    subject_number = zeros(1, length(files));
    % Get subject numbers
    for cF = 1:length(files)
        subject_number(cF) =  sscanf(files(cF).name, 'subject_%d.mat');
    end
    handles.init_parameter.subject_index = subject_number;
    % Display available subjects
    load(files(1).name)
    set(handles.DL_suject_text, 'String', length(files));
    
    % Display subject list
    handles.init_parameter.subject_name = DL_struct2cell(files);
    set(handles.DL_list_subject_available, 'String', handles.init_parameter.subject_name );
    handles.init_parameter.subject_number = 1:length(files);
    % Allow subject list go get multiple selection
    set(handles.DL_list_subject_available, 'Max', length(files))
    set(handles.DP_list_subject_selected, 'Max', length(files))
    
    % intialize subject lists
    handles.selected_subject = [];
    handles.unselected_subject = handles.init_parameter.subject_number;
    
    % set data sampling rate
    handles.init_parameter.sampling_rate_by_data = s_EEG.sampling_rate;
    
    % display sampling rate
    update_sampling_rate(handles, hObject)
    % update init_parameter sampling rate
    handles.data_sampling_rate = s_EEG.sampling_rate;
    %updata data path display
    set(handles.DL_st_data_path, 'String',  handles.init_parameter.data_location)
    
else
    
    %set number of subject
    set(handles.DL_Data_Compatibility_text, 'String', 'Data not Compatible');
    % display if data formatting is bad
    set(handles.DL_suject_text, 'String', 'Undefined');
    % empty the subject list
    set(handles.DL_list_subject_available, 'String', {});
    
end

guidata(hObject, handles);


