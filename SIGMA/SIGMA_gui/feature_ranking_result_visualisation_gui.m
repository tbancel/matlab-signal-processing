function varargout = feature_ranking_result_visualisation_gui(varargin)
% FEATURE_RANKING_RESULT_VISUALISATION_GUI MATLAB code for feature_ranking_result_visualisation_gui.fig
%      FEATURE_RANKING_RESULT_VISUALISATION_GUI, by itself, creates a new FEATURE_RANKING_RESULT_VISUALISATION_GUI or raises the existing
%      singleton*.
%
%      H = FEATURE_RANKING_RESULT_VISUALISATION_GUI returns the handle to a new FEATURE_RANKING_RESULT_VISUALISATION_GUI or the handle to
%      the existing singleton*.
%
%      FEATURE_RANKING_RESULT_VISUALISATION_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FEATURE_RANKING_RESULT_VISUALISATION_GUI.M with the given input arguments.
%
%      FEATURE_RANKING_RESULT_VISUALISATION_GUI('Property','Value',...) creates a new FEATURE_RANKING_RESULT_VISUALISATION_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before feature_ranking_result_visualisation_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to feature_ranking_result_visualisation_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help feature_ranking_result_visualisation_gui

% Last Modified by GUIDE v2.5 28-Sep-2017 16:10:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @feature_ranking_result_visualisation_gui_OpeningFcn, ...
    'gui_OutputFcn',  @feature_ranking_result_visualisation_gui_OutputFcn, ...
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


% --- Executes just before feature_ranking_result_visualisation_gui is made visible.
function feature_ranking_result_visualisation_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to feature_ranking_result_visualisation_gui (see VARARGIN)

% Choose default command line output for feature_ranking_result_visualisation_gui
handles.output = hObject;

% check if data are given to the GUI
if(length(varargin) > 0)
    handles.input_feature = varargin{1};
    handles.input_method = varargin{2};
    
    % give the right shape to data
    data = num2cell(handles.input_feature.o_features_matrix_id(handles.input_feature.idx_best_features, :));
    for cF = 1:size(data,1)
        data{cF,1} =  handles.input_method(data{cF,1}).method_name;
    end
    % display data in the table
    set(handles.FRRV_table, 'Data', data)
    
else
    handles.input = [];
end




% Update handles structure
guidata(hObject, handles);

% UIWAIT makes feature_ranking_result_visualisation_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = feature_ranking_result_visualisation_gui_OutputFcn(hObject, eventdata, handles)

varargout{1} = handles.output;


% --- Executes on button press in FRRV_pb_load_data.
function FRRV_pb_load_data_Callback(hObject, eventdata, handles)

disp('TO CODE WHEN LOADING CODED')
% FINIR DE CODER
[FileName,PathName] = uigetfile();
if( FileName == 0)
    disp('load cancelled')
else
    
    load([PathName,FileName ]);
    % give names
    handles.input_feature = features_results;
    handles.input_method = init_method;
    % give the right shape to data
    data = num2cell(handles.input_feature.o_features_matrix_id(handles.input_feature.idx_best_features, :));
    for cF = 1:size(data,1)
        data{cF,1} =  handles.input_method(data{cF,1}).method_name;
    end
    % display data in the table
    set(handles.FRRV_table, 'Data', data)
end
