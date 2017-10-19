function varargout = gui_aure_v1(varargin)
% GUI_AURE_V1 MATLAB code for gui_aure_v1.fig
%      GUI_AURE_V1, by itself, creates a new GUI_AURE_V1 or raises the existing
%      singleton*.
%
%      H = GUI_AURE_V1 returns the handle to a new GUI_AURE_V1 or the handle to
%      the existing singleton*.
%
%      GUI_AURE_V1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_AURE_V1.M with the given input arguments.
%
%      GUI_AURE_V1('Property','Value',...) creates a new GUI_AURE_V1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_aure_v1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_aure_v1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_aure_v1

% Last Modified by GUIDE v2.5 11-Oct-2017 12:04:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @gui_aure_v1_OpeningFcn, ...
    'gui_OutputFcn',  @gui_aure_v1_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui_aure_v1 is made visible.
function gui_aure_v1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_aure_v1 (see VARARGIN)

% Choose default command line output for gui_aure_v1
handles.output = hObject;

handles.color = { [255, 230, 230 ]/255, [ 255, 204, 153]/255, [204, 255, 229]/255 };


% Crete initial init_parameter
handles = set_initial_init_parameter(handles, hObject);

%Add frequency band button name list
frequency_button_name = {'DP_delta', 'DP_theta', 'DP_mu', 'DP_alpha', 'DP_beta', 'DP_gamma', 'DP_gamma_high', 'DP_total_bandwidth', 'DP_all'};
handles.frequency_button_name = frequency_button_name;
handles.init_parameter.frequency_button_name = frequency_button_name;


% Launch the fequency script
handles.init_parameter = Sigma_frequency_initialisation(handles.init_parameter);


% Set frequency band values in GUI from init_parameter values
handles = DP_set_frequency_band_GUI(handles, hObject);

% initialize methods
handles.selected_method = [];

% initialise classification and feature ranking method
handles.init_parameter.adv_ranking_method = 'relieff';
handles = update_feature_ranking(handles, hObject);
handles.selected_model = [];

% set the reference structure of the decision of recomputing features after
% classification
handles.computed.subject = handles.init_parameter.subject;
handles.computed.freq_band = handles.init_parameter.selected_band;
handles.computed.init_method = handles.init_method;
handles.computed.threshold_probe = handles.init_parameter.threshold_probe;
handles.computed.nb_features = handles.init_parameter.nb_features;



% initialize button state
initialize_buttons(handles, hObject)
set_button_availability(handles, hObject)


%  Update handles structure

% set initial method list
FEM_unselected_initial_generation(hObject, eventdata, handles)

handles = init_parameter2gui(handles, hObject);
guidata(hObject, handles);

% disp(handles)
% UIWAIT makes gui_aure_v1 wait for user response (see UIRESUME)
% uiwait(handles.learning_panel);


% --- Outputs from this function are returned to the command line.
function varargout = gui_aure_v1_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% SELECT SUBJECT TO BE REMOVED FROM CLASSIFICATION
function DP_pb_subject_remove_Callback(hObject, eventdata, handles)

handles = DP_subject2left(handles, hObject);
set_button_availability(handles, hObject);
guidata(hObject, handles);

% SELECT SUBJECT TO BE CLASSIFIED
function DL_pb_subject_select_Callback(hObject, eventdata, handles)

handles = DP_subject2right(handles, hObject);
set_button_availability(handles, hObject)
guidata(hObject, handles);


function DP_cb_resampling_enable_Callback(hObject, eventdata, handles)
update_sampling_rate(handles, hObject)


function DP_sampling_edit_Callback(hObject, eventdata, handles)
update_sampling_rate(handles, hObject)


function DP_sampling_edit_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in DP_delta.
function DP_delta_Callback(hObject, eventdata, handles)

% update selected band list
handles = DP_update_frequency_band(handles, hObject);

% update methods
handles = update_method_from_principal_gui(handles, hObject);

guidata(hObject, handles);

% --- Executes on button press in DP_theta.
function DP_theta_Callback(hObject, eventdata, handles)

% update selected band list
handles = DP_update_frequency_band(handles, hObject);
% update methods
handles = update_method_from_principal_gui(handles, hObject);
guidata(hObject, handles);

% --- Executes on button press in DP_mu.
function DP_mu_Callback(hObject, eventdata, handles)

% update selected band list
handles = DP_update_frequency_band(handles, hObject);
% update methods
handles = update_method_from_principal_gui(handles, hObject);

guidata(hObject, handles);

% --- Executes on button press in DP_alpha.
function DP_alpha_Callback(hObject, eventdata, handles)

% update selected band list
handles = DP_update_frequency_band(handles, hObject);
% update methods
handles = update_method_from_principal_gui(handles, hObject);
guidata(hObject, handles);

% --- Executes on button press in DP_beta.
function DP_beta_Callback(hObject, eventdata, handles)

% update selected band list
handles = DP_update_frequency_band(handles, hObject);
% update methods
handles = update_method_from_principal_gui(handles, hObject);
guidata(hObject, handles);

% --- Executes on button press in DP_gamma.
function DP_gamma_Callback(hObject, eventdata, handles)

% update selected band list
handles = DP_update_frequency_band(handles, hObject);
% update methods
handles = update_method_from_principal_gui(handles, hObject);
guidata(hObject, handles);

% --- Executes on button press in DP_gamma_high.
function DP_gamma_high_Callback(hObject, eventdata, handles)

% update selected band list
handles = DP_update_frequency_band(handles, hObject);
% update methods
handles = update_method_from_principal_gui(handles, hObject);
guidata(hObject, handles);

% --- Executes on button press in DP_total_bandwidth.
function DP_total_bandwidth_Callback(hObject, eventdata, handles)
% update selected band list
handles = DP_update_frequency_band(handles, hObject);
% update methods
handles = update_method_from_principal_gui(handles, hObject);
guidata(hObject, handles);


% --- Executes on button press in DP_all.
function DP_all_Callback(hObject, eventdata, handles)

% set all buttons on the value of "all"
set_all_frequency_button_on(handles, hObject)
% update init parameter
handles = DP_update_frequency_band(handles, hObject);
% update methods
handles = update_method_from_principal_gui(handles, hObject);
guidata(hObject, handles);

% SELECT DATA USED FOR CLASSIFICATION
function DL_path_push_Callback(hObject, eventdata, handles)

% Get data path for .mat filesa and add it to data location
FilePath = uigetdir();
if( FilePath == 0 )
    disp('No path')
else
    if ispc
    handles.init_parameter.data_location = [ FilePath, '\' ];
    end
    if ismac
    handles.init_parameter.data_location = [ FilePath, '/' ];
    end
    
    % Load subject data and update all
    handles = DL_load_subjects(handles, hObject);
    %Set button availability
    
    set_button_availability(handles, hObject)
    guidata(hObject, handles);
end

% --- Executes on button press in DP_pb_freq_band_edit.
function DP_pb_freq_band_edit_Callback(hObject, eventdata, handles)

%Allow to edit frequency bandwidth
handles = call_frequency_band_editGUI(handles, hObject);
guidata(hObject, handles);

% --- Executes on selection change in DP_list_subject_selected.
function DP_list_subject_selected_Callback(hObject, eventdata, handles)
if( strcmp(get(handles.learning_panel,'SelectionType'), 'open'))
    
    handles = DP_subject2left(handles, hObject);
    set_button_availability(handles, hObject);
    guidata(hObject, handles);  
end

%--- Executes during object creation, after setting all properties.
function DP_list_subject_selected_CreateFcn(hObject, eventdata, handles)
% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function DL_pb_data_viz_Callback(hObject, eventdata, handles)

% Load visualization GUI
Sigma_visualisating_data(handles.init_parameter);

function Settings_Callback(hObject, eventdata, handles)

%
function DL_list_subject_available_Callback(hObject, eventdata, handles)
% if the list is double ckied
if( strcmp(get(handles.learning_panel,'SelectionType'), 'open'))
    handles = DP_subject2right(handles, hObject);
    set_button_availability(handles, hObject)
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function DL_list_subject_available_CreateFcn(hObject, eventdata, handles)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% Generate the list of method and display it
function FEM_unselected_initial_generation(hObject, eventdata, handles)

handles = set_method_GUI(handles, hObject);

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FEM_unselected_CreateFcn(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function FEM_frequently_used_list_CreateFcn(hObject, eventdata, handles)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in FEM_unselected.
function FEM_unselected_Callback(hObject, eventdata, handles)
% set button availability of ediatable method
set_button_availability(handles, hObject)
if( strcmp(get(handles.learning_panel,'SelectionType'), 'open'))
    % move method to the selected method panel
    handles = FEM_method2right(handles, hObject);
    guidata(hObject, handles);
end

% --- Executes on selection change in FEM_selected.
function FEM_selected_Callback(hObject, eventdata, handles)
% set button availability of ediatable method
set_button_availability(handles, hObject)
if( strcmp(get(handles.learning_panel,'SelectionType'), 'open'))
    % move method to the unselected method panel
    handles = FEM_method2left(handles, hObject);
    guidata(hObject, handles);
end

% --- Executes on button press in FEM_to_right.
function FEM_to_right_Callback(hObject, eventdata, handles)
% move method to the selected method panel
handles = FEM_method2right(handles, hObject);
guidata(hObject, handles);

function FEM_to_left_Callback(hObject, eventdata, handles)
% move method to the unselected method panel
handles = FEM_method2left(handles, hObject);
guidata(hObject, handles);

function FEM_pb_method_edit_Callback(hObject, eventdata, handles)

handles = call_method_edit_gui(handles, hObject);
guidata(hObject, handles);


% --- Executes on button press in FEM_pb_compute.
function FEM_pb_compute_Callback(hObject, eventdata, handles)
% compute the features
handles = compute_features(handles, hObject);

guidata(hObject, handles);
disp(handles.features_results)


% --- Executes during object creation, after setting all properties.
function FEM_selected_CreateFcn(hObject, eventdata, handles)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function learning_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function apply_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function results_Callback(hObject, eventdata, handles)







function FR_edit_nb_feature_Callback(hObject, eventdata, handles)
handles = update_feature_ranking(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FR_edit_nb_feature_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in FR_pb_compute_FR.
function FR_pb_compute_FR_Callback(hObject, eventdata, handles)

handles = feature_ranking_gui(handles, hObject);
guidata(hObject, handles);

% --- Executes on button press in FR_pb_display_FR.
function FR_pb_display_FR_Callback(hObject, eventdata, handles)
% Call the feature ranking result display GUI
handles = call_feature_ranking_display_results(handles, hObject);
% % J'ai rajouté ça ici pour l'instant
% Sigma_3DScatterPlot(handles.init_parameter,handles.init_method,handles.features_results)


guidata(hObject, handles);

% --- Executes on button press in FR_rb_nb_feature.
function FR_rb_nb_feature_Callback(hObject, eventdata, handles)

function FR_rb_GS_Callback(hObject, eventdata, handles)


% --- Executes on button press in FR_rb_probe_variable.
function FR_rb_probe_variable_Callback(hObject, eventdata, handles)


function FR_edit_probability_probe_Callback(hObject, eventdata, handles)

handles = update_feature_ranking(handles, hObject);
guidata(hObject, handles);

function FR_edit_probability_probe_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in FEM_pb_load_feature.
function FEM_pb_load_feature_Callback(hObject, eventdata, handles)

% --- Executes when selected object is changed in FR_bg_ranking_method.
function FR_bg_ranking_method_SelectionChangedFcn(hObject, eventdata, handles)

% get the selected button
handles = update_feature_ranking(handles, hObject);
guidata(hObject, handles);

% --- Executes when selected object is changed in FR_bg_nb_feature.
function FR_bg_nb_feature_SelectionChangedFcn(hObject, eventdata, handles)

handles = update_feature_ranking(handles, hObject);
guidata(hObject, handles);


% --- Executes when selected object is changed in DC_bg_classification_method.
function DC_bg_classification_method_SelectionChangedFcn(hObject, eventdata, handles)

handles = update_classification_settings(handles, hObject);
set_button_availability(handles, hObject)
guidata(hObject, handles);

% --- Executes when selected object is changed in DC_bg_cross_validation.
function DC_bg_cross_validation_SelectionChangedFcn(hObject, eventdata, handles)
% Update classification parameters
handles = update_classification_settings(handles, hObject);
guidata(hObject, handles);


function DC_cb_LOSO_Callback(hObject, eventdata, handles)
% Update classification parameters
handles = update_classification_settings(handles, hObject);
set_button_availability(handles, hObject)
guidata(hObject, handles);



function DC_cb_LOEO_Callback(hObject, eventdata, handles)
% Update classification parameters
handles = update_classification_settings(handles, hObject);
set_button_availability(handles, hObject)
guidata(hObject, handles);


% --- Executes on button press in DC_pb_compute.
function DC_pb_compute_Callback(hObject, eventdata, handles)
% compute the classification
handles = compute_classification(handles, hObject);
guidata(hObject, handles);

% --- Executes on button press in DC_pb_display.
function DC_pb_display_Callback(hObject, eventdata, handles)
% call a result display gui
handles = call_classification_display_result(handles, hObject);
guidata(hObject, handles);

% --- Executes on button press in A_pb_reset_parameter.
function A_pb_reset_parameter_Callback(hObject, eventdata, handles)

%Reset init_parameter
handles = set_initial_init_parameter(handles, hObject);
% set gui according to init_parameter values
handles = init_parameter2gui(handles, hObject);
guidata(hObject, handles);


% --- Executes on button press in A_pb_load_session.
function A_pb_load_session_Callback(hObject, eventdata, handles)



% --- Executes on button press in A_pb_see_workspace.
function A_pb_see_workspace_Callback(hObject, eventdata, handles)
disp(handles.init_parameter)
disp(handles.init_method(1))
disp(handles.features_results)
disp(handles.performances_results)
assignin('base', 'init_parameter', handles.init_parameter )
assignin('base', 'init_method', handles.init_method )
assignin('base', 'features_results', handles.features_results )
assignin('base', 'performances_results', handles.performances_results )
assignin('base', 'init_parameter', handles.init_parameter )
disp(handles.init_parameter.subject_name)

% --- Executes on button press in FR_pb_edit_advanced_method.
function FR_pb_edit_advanced_method_Callback(hObject, eventdata, handles)
% allow the selection of advanced FR methods
handles = call_advanced_ranking_methodGUI(handles, hObject);
guidata(hObject, handles);


% --------------------------------------------------------------------
function menu_op_display_results_Callback(hObject, eventdata, handles)

handles = call_classification_display_result(handles, hObject);
guidata(hObject, handles);


% --------------------------------------------------------------------
function men_op_apply_model_Callback(hObject, eventdata, handles)

handles = call_apply_model_GUI(handles, hObject);
guidata(hObject, handles);

% --------------------------------------------------------------------
function menu_files_Callback(hObject, eventdata, handles)
% Nothing


% --------------------------------------------------------------------
function menu_files_new_session_Callback(hObject, eventdata, handles)
%Reset init_parameter
handles = set_initial_init_parameter(handles, hObject);
% set gui according to init_parameter values
handles = init_parameter2gui(handles, hObject);
guidata(hObject, handles);


% --------------------------------------------------------------------
function menu_files_load_session_Callback(hObject, eventdata, handles)

% FINIR DE CODER
[FileName,PathName] = uigetfile();
if( FileName == 0)
    disp('load cancelled')
else
    
opening_session_name = [ PathName, FileName ];
handles = Sigma_load_sessionGUI( opening_session_name, handles, hObject );

% Update the gui according to init_paramter and other sata structures
handles = init_parameter2gui(handles, hObject);

guidata(hObject, handles);
end

function menu_files_save_session_Callback(hObject, eventdata, handles)
% add SAVE GUI when function is modified

% call session save gui
save_session_gui(handles)


function menu_files_quit_Callback(hObject, eventdata, handles)

%call close function
close(handles.learning_panel)


% --------------------------------------------------------------------
function menu_op_Callback(hObject, eventdata, handles)
% hObject    handle to menu_op (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_settings_Callback(hObject, eventdata, handles)
% hObject    handle to menu_settings (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in DC_pb_edit_classification_method.
function DC_pb_edit_classification_method_Callback(hObject, eventdata, handles)

% change the SVM parameters
handles = call_edit_classification_method_GUI(handles, hObject);
guidata(hObject, handles);


% --- Executes on button press in DC_pb_apply_model.
function DC_pb_apply_model_Callback(hObject, eventdata, handles)

handles = call_apply_model_GUI(handles, hObject);
guidata(hObject, handles);


% --------------------------------------------------------------------
function FRRV_Callback(hObject, eventdata, handles)

handles = call_feature_ranking_display_results(handles, hObject);
guidata(hObject, handles);


% --- Executes on button press in test_classif_method.
function test_classif_method_Callback(hObject, eventdata, handles)

handles = call_edit_classification_method_GUI(handles, hObject)


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% J'ai rajouté ça ici pour l'instant
tf = isfield(handles.features_results, 'o_best_features_matrix');
if tf==1
    figure;
    Sigma_3DScatterPlot(handles.init_parameter,handles.init_method,handles.features_results);
else
   msgbox('You should run the OFR before','SIGMA Error','error');
return; 
end
