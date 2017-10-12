function handles = set_initial_init_parameter(handles, hObject)


% create init_parameter
handles.init_parameter = Sigma_parameter_initialisation();

%Set initial data location
handles.init_parameter.data_location = [];

% Deal wtih directory
handles.init_parameter.sigma_directory = pwd;

%initialize data compatibility
handles.init_parameter.data_compatibility = 0;

% don't write in the diary
handles.init_parameter.sigma_write_diaryFile = 0;

%Empty suject field of structure
handles.init_parameter.subject = [];
handles.init_parameter.nb_subject = length(handles.init_parameter.subject);
handles.init_parameter.subject_number = [];
handles.init_parameter.subject_name = {};
handles.init_parameter.subject_number = [];

%remove last band from pre-selected bands
handles.init_parameter.selected_band(end) = [];

%set filter to 1
handles.init_parameter.apply_filter = 1;

% set defaut selected band
handles.init_parameter.selected_band = 8;
handles.init_parameter.nb_bands = length(handles.init_parameter.selected_band);

% create initial samling rate
handles.init_parameter.sampling_rate_by_data = 0;
handles.init_parameter.sampling_rate_default = 1; % use a pre defined sampling rate

% initialize feature results
handles.features_results = [];

% initialize classification results
handles.performances_results = [];

% initialize feature ranking parameter and method
handles.init_parameter.threshold_probe = 0.8;
handles.init_parameter.nb_features = 1;
handles.init_parameter.adv_ranking_method = 'relieff';

% call init_parameter frequency definition function
handles.init_parameter = Sigma_frequency_initialisation(handles.init_parameter);

% Initialize methods
handles.init_method = Sigma_method_initialisation(handles.init_parameter);

% set number of initial feature extraction methods
handles.init_parameter.method = [];
handles.init_parameter.nb_method = length(handles.init_parameter.method);


% set initial svm parameters
handles.init_parameter.svm_parameter.kernel = 'linear';
handles.init_parameter.svm_parameter.gaussian_value = 0.5:0.5:4;
handles.init_parameter.svm_parameter.polynomial_value = 2:5;
handles.init_parameter.svm_parameter.constraint =  [0.1:0.1:0.5 1 : 5];
handles.init_parameter.svm_parameter.tolkkt = 5e-2;
handles.init_parameter.svm_parameter.violation = 0.1;
handles.init_parameter.svm_parameter.retest = 1;
handles.init_parameter.svm_parameter.stability_test = 30;


%  Update handles structure
guidata(hObject, handles);




end