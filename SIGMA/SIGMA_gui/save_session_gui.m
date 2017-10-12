function varargout = save_session_gui(varargin)
% SAVE_SESSION_GUI MATLAB code for save_session_gui.fig
%      SAVE_SESSION_GUI, by itself, creates a new SAVE_SESSION_GUI or raises the existing
%      singleton*.
%
%      H = SAVE_SESSION_GUI returns the handle to a new SAVE_SESSION_GUI or the handle to
%      the existing singleton*.
%
%      SAVE_SESSION_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAVE_SESSION_GUI.M with the given input arguments.
%
%      SAVE_SESSION_GUI('Property','Value',...) creates a new SAVE_SESSION_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before save_session_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to save_session_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help save_session_gui

% Last Modified by GUIDE v2.5 03-Aug-2017 10:12:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @save_session_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @save_session_gui_OutputFcn, ...
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


% --- Executes just before save_session_gui is made visible.
function save_session_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to save_session_gui (see VARARGIN)

% Choose default command line output for save_session_gui
handles.output = hObject;

handles.input = varargin{1};
handles.path_name = [];

handles.init_parameter = handles.input.init_parameter;
    handles.init_parameter = handles.input.init_parameter;
    handles.init_method = handles.input.init_method;
    handles.features_results = handles.input.features_results;
    handles.performances_results = handles.input.performances_results;
    handles.selected_model = handles.input.selected_model;
% Update handles structure
handles = save_GUI_button_availability(handles, hObject);
guidata(hObject, handles);

% UIWAIT makes save_session_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = save_session_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in SS_pb_session_path.
function SS_pb_session_path_Callback(hObject, eventdata, handles)
% hObject    handle to SS_pb_session_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uiputfile();
handles.file_name = FileName;
handles.path_name = PathName;
handles = save_GUI_button_availability(handles, hObject);
set(handles.SS_st_path_indicator, 'String', [PathName, FileName])
guidata(hObject, handles);

% --- Executes on button press in SS_pb_ok.
function SS_pb_ok_Callback(hObject, eventdata, handles)

% save the session
if( handles.file_name == 0)
    disp('save cancelled')
else
    % Create session name
    handles.init_parameter = Sigma_create_session_name(handles.input.init_parameter,handles.file_name(1:(end-4)));
    % change data output path
    handles.init_parameter.data_output = handles.path_name;
    handles.init_parameter.full_session_name = [ handles.path_name, handles.init_parameter.session_name ];
    mkdir( [ handles.path_name, handles.init_parameter.session_name ]);
    
    %Assign data structue for script compatibility
    session_name = handles.init_parameter.full_session_name;
    init_parameter = handles.init_parameter;
    init_method = handles.init_method;
    features_results = handles.features_results;
    performances_results = handles.performances_results;
    selected_model = handles.selected_model;
    
    Sigma_save_session( session_name , init_parameter, init_method , features_results , performances_results , selected_model);
end


close(handles.figure1)

% --- Executes on button press in SS_pb_cancel.
function SS_pb_cancel_Callback(hObject, eventdata, handles)
% hObject    handle to SS_pb_cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)


% --- Executes on button press in SS_cb_features.
function SS_cb_features_Callback(hObject, eventdata, handles)

handles = save_GUI_button_availability(handles, hObject);
guidata(hObject, handles);


% --- Executes on button press in SS_cb_selected_model.
function SS_cb_selected_model_Callback(hObject, eventdata, handles)

handles = save_GUI_button_availability(handles, hObject);
guidata(hObject, handles);


% --- Executes on button press in SS_cb_parameters.
function SS_cb_parameters_Callback(hObject, eventdata, handles)

handles = save_GUI_button_availability(handles, hObject);
guidata(hObject, handles);


% --- Executes on button press in SS_cb_classification_performences.
function SS_cb_classification_performences_Callback(hObject, eventdata, handles)

handles = save_GUI_button_availability(handles, hObject);
guidata(hObject, handles);
