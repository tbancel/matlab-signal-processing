function varargout = viz_results(varargin)
% VIZ_RESULTS MATLAB code for viz_results.fig
%      VIZ_RESULTS, by itself, creates a new VIZ_RESULTS or raises the existing
%      singleton*.
%
%      H = VIZ_RESULTS returns the handle to a new VIZ_RESULTS or the handle to
%      the existing singleton*.
%
%      VIZ_RESULTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VIZ_RESULTS.M with the given input arguments.
%
%      VIZ_RESULTS('Property','Value',...) creates a new VIZ_RESULTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before viz_results_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to viz_results_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help viz_results

% Last Modified by GUIDE v2.5 01-Aug-2017 19:36:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @viz_results_OpeningFcn, ...
                   'gui_OutputFcn',  @viz_results_OutputFcn, ...
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


% --- Executes just before viz_results is made visible.
function viz_results_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to viz_results (see VARARGIN)

% Choose default command line output for viz_results
handles.output = hObject;

% get the data from the base
init_parameter = evalin('base', 'init_parameter');
features_results = evalin('base', 'features_results');
init_method = evalin('base', 'init_method');
performances_results = evalin('base', 'performances_results');
selected_model = evalin('base', 'selected_model');

handles.init_parameter=init_parameter;
handles.features_results=features_results;
handles.init_method=init_method;
handles.performances_results=performances_results;
handles.selected_model=selected_model;


guidata(hObject,handles)


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes viz_results wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = viz_results_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
h=handles.axes1;
init_parameter=handles.init_parameter;
features_results=handles.features_results;
init_method=handles.init_method;
performances_results=handles.performances_results;
selected_model=handles.selected_model;

plot_best_roc=1;
if plot_best_roc==1
    [max_auc, index]=max(performances_results.performance(:,8));
    scores=performances_results.scores{2};% negative classe
    %figure('color',[1 1 1]);
    grid on; grid minor; hold on
    %[max_auc, index]=max(AUC);
    [Xa,Ya,~,~,OPTROCPT] = perfcurve(features_results.labels,scores(index,:),1);
    plot(Xa,Ya,'r*',0:1,0:1,'g',1:-0.1:0,0:0.1:1,'y',OPTROCPT(1),OPTROCPT(2),'ks','markersize',15);
    xlabel('False positive rate')
    ylabel('True positive rate')
    title('ROC for Classification')
    dim = [0.3 0.0 0.6 0.3];
    str =['Max AUC = ' num2str(max_auc*100,4) '% for Nb feat = :  ' num2str(index) ];
    annotation('textbox',dim,'String',str,'FitBoxToText','on');
    
    %%% TODO Comput the CutOff Point from the results
end   


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)

init_parameter=handles.init_parameter;
features_results=handles.features_results;
init_method=handles.init_method;
performances_results=handles.performances_results;
selected_model=handles.selected_model;

plot_best_confusion_matrix_2=1;
if plot_best_confusion_matrix_2
[~, index_max_auc]=max(performances_results.performance(:,8));
[confusion_matrix,~] = confusionmat(features_results.labels,performances_results.prediction(index_max_auc,:));
opt=confMatPlot('defaultOpt');
opt.className={'High', 'Low'};
opt.mode='both';
opt.mode='percentage';
opt.format='8.2f';
%figure; 
confMatPlot(confusion_matrix, opt);
end

    



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
