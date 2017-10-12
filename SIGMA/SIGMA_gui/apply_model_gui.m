function varargout = apply_model_gui(varargin)
% APPLY_MODEL_GUI MATLAB code for apply_model_gui.fig
%      APPLY_MODEL_GUI, by itself, creates a new APPLY_MODEL_GUI or raises the existing
%      singleton*.
%
%      H = APPLY_MODEL_GUI returns the handle to a new APPLY_MODEL_GUI or the handle to
%      the existing singleton*.
%
%      APPLY_MODEL_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APPLY_MODEL_GUI.M with the given input arguments.
%
%      APPLY_MODEL_GUI('Property','Value',...) creates a new APPLY_MODEL_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before apply_model_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to apply_model_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help apply_model_gui

% Last Modified by GUIDE v2.5 22-Sep-2017 17:06:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @apply_model_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @apply_model_gui_OutputFcn, ...
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


% --- Executes just before apply_model_gui is made visible.
function apply_model_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to apply_model_gui (see VARARGIN)

% Choose default command line output for apply_model_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes apply_model_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = apply_model_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in AM_pb_load_model.
function AM_pb_load_model_Callback(hObject, eventdata, handles)
% hObject    handle to AM_pb_load_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in AM_pb_load_data.
function AM_pb_load_data_Callback(hObject, eventdata, handles)
% hObject    handle to AM_pb_load_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
