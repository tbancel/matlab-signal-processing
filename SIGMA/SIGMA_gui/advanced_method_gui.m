function varargout = advanced_method_gui(varargin)
% ADVANCED_METHOD_GUI MATLAB code for advanced_method_gui.fig
%      ADVANCED_METHOD_GUI, by itself, creates a new ADVANCED_METHOD_GUI or raises the existing
%      singleton*.
%
%      H = ADVANCED_METHOD_GUI returns the handle to a new ADVANCED_METHOD_GUI or the handle to
%      the existing singleton*.
%
%      ADVANCED_METHOD_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADVANCED_METHOD_GUI.M with the given input arguments.
%
%      ADVANCED_METHOD_GUI('Property','Value',...) creates a new ADVANCED_METHOD_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before advanced_method_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to advanced_method_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help advanced_method_gui

% Last Modified by GUIDE v2.5 02-Sep-2017 15:22:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @advanced_method_gui_OpeningFcn, ...
    'gui_OutputFcn',  @advanced_method_gui_OutputFcn, ...
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


% --- Executes just before advanced_method_gui is made visible.
function advanced_method_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to advanced_method_gui (see VARARGIN)

% Choose default command line output for advanced_method_gui
handles.output = 'relieff';

aa = varargin{1};
adv_met = aa.adv_ranking_method;

if strcmp( adv_met, 'relieff' )
    set(handles.ADV_relieff, 'Value', 1);
elseif( strcmp( adv_met, 'fsv' ) )
    set(handles.ADV_fsv, 'Value', 1);
elseif( strcmp( adv_met, 'llcfs' ) )
    set(handles.ADV_llcfs, 'Value', 1);
elseif( strcmp( adv_met, 'Inf-FS' ) )
    set(handles.ADV_inffs, 'Value', 1);
elseif( strcmp( adv_met, 'LaplacianScore' ) )
    set(handles.ADV_maplacian_score, 'Value', 1);
elseif( strcmp( adv_met, 'MCFS' ) )
    set(handles.ADV_mcfs, 'Value', 1);
elseif( strcmp( adv_met, 'udfs' ) )
    set(handles.ADV_udfs, 'Value', 1);
elseif( strcmp( adv_met, 'cfs' ) )
    set(handles.ADV_cfs, 'Value', 1);
end

handles.adv_met = adv_met;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes advanced_method_gui wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = advanced_method_gui_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
% The figure can be deleted now
delete(handles.figure1);


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
if isequal(get(hObject, 'waitstatus'), 'waiting')
    % The GUI is still in UIWAIT, us UIRESUME
    uiresume(hObject);
else
    % The GUI is no longer waiting, just close it
    delete(hObject);
end


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)

but_sel = get( hObject, 'Tag' );

if strcmp( but_sel, 'ADV_relieff' )
    handles.output = 'relieff';
elseif( strcmp( but_sel, 'ADV_fsv' ) )
    handles.output = 'fsv';
elseif( strcmp( but_sel, 'ADV_llcfs' ) )
    handles.output = 'llcfs';
elseif( strcmp( but_sel, 'ADV_inffs' ) )
    handles.output = 'Inf-FS';
elseif( strcmp( but_sel, 'ADV_laplacian_score' ) )
    handles.output = 'LaplacianScore';
elseif( strcmp( but_sel, 'ADV_mcfs' ) )
    handles.output = 'MCFS';
elseif( strcmp( but_sel, 'ADV_udfs' ) )
    handles.output = 'udfs';
elseif( strcmp( but_sel, 'ADV_cfs' ) )
    handles.output = 'cfs';
end

guidata(hObject, handles);


% --- Executes on button press in ADV_ok.
function ADV_ok_Callback(hObject, eventdata, handles)

close(handles.figure1)



% --- Executes on button press in ADV_cancel.
function ADV_cancel_Callback(hObject, eventdata, handles)

handles.output = handles.adv_met;
guidata(hObject, handles);
close(handles.figure1)
