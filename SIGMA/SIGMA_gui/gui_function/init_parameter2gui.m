function handles = init_parameter2gui(handles, hObject)

% set gui display from init_parameter values

% Set data loading
handles = set_Data_LoadingGUI(handles, hObject);

%set Data processing
handles = set_Data_ProcessingGUI(handles, hObject);

% set feature computation
handles = set_Feature_ExtractionGUI(handles, hObject);

%set feature ranking
handles = set_Feature_RankingGUI(handles, hObject);

%set data classification
handles = set_Data_classificationGUI(handles, hObject);


%Diverse updates
set_button_availability(handles, hObject);
guidata(hObject, handles);
end