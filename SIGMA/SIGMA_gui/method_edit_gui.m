function varargout = method_edit_gui(varargin)
% METHOD_EDIT_GUI MATLAB code for method_edit_gui.fig
%      METHOD_EDIT_GUI, by itself, creates a new METHOD_EDIT_GUI or raises the existing
%      singleton*.
%
%      H = METHOD_EDIT_GUI returns the handle to a new METHOD_EDIT_GUI or the handle to
%      the existing singleton*.
%
%      METHOD_EDIT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in METHOD_EDIT_GUI.M with the given input arguments.
%
%      METHOD_EDIT_GUI('Property','Value',...) creates a new METHOD_EDIT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before method_edit_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to method_edit_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help method_edit_gui

% Last Modified by GUIDE v2.5 01-Aug-2017 21:41:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @method_edit_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @method_edit_gui_OutputFcn, ...
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


% --- Executes just before method_edit_gui is made visible.
function method_edit_gui_OpeningFcn(hObject, eventdata, handles, varargin)

% Choose default command line output for method_edit_gui
handles.output = hObject;

disp('selected method')
handles.method = varargin{1};

% save imported method settings
handles.imported_method = handles.method;

%set gui title
set(handles.ME_method_name, 'String', handles.method.fc_method_name)

% create button names
handles.parameter_name = { 'ME_et_frequency_step', 'ME_et_relative', 'ME_et_all_fourier_power', 'ME_et_pwelch_width', 'ME_et_dimension', 'ME_et_tau', 'ME_et_tolerance', 'ME_et_epsilon'};
% check which field to activate
[nb_parameter_to_change, parameter_index] = check_method_editable_parameter(handles.method);
disp(parameter_index)
handles.parameter_index = parameter_index;

% freeze of not the typing fields acording to method parameters
set(handles.ME_et_frequency_step, 'Enable', num2on_off(parameter_index(1+3)));
set(handles.ME_et_relative, 'Enable', num2on_off(parameter_index(2+3)));
set(handles.ME_et_all_fourier_power, 'Enable', num2on_off(parameter_index(3+3)));
set(handles.ME_et_pwelch_width, 'Enable', num2on_off(parameter_index(4+3)));
set(handles.ME_et_dimension, 'Enable', num2on_off(parameter_index(5+3)));
set(handles.ME_et_tau, 'Enable', num2on_off(parameter_index(6+3)));
set(handles.ME_et_tolerance, 'Enable', num2on_off(parameter_index(7+3)));
set(handles.ME_et_epsilon, 'Enable', num2on_off(parameter_index(8+3)));

%add to the editing field the most common values defined in init method
set(handles.ME_et_frequency_step, 'String', num2str(handles.method.frequency_step));
set(handles.ME_et_relative, 'String', num2str(handles.method.relative));
set(handles.ME_et_all_fourier_power, 'String', num2str(handles.method.all_fourier_power));
set(handles.ME_et_pwelch_width, 'String', num2str(handles.method.pwelch_width));
set(handles.ME_et_dimension, 'String', num2str(handles.method.dimension));
set(handles.ME_et_tau, 'String', num2str(handles.method.tau));
set(handles.ME_et_tolerance, 'String', num2str(handles.method.tolerance));
set(handles.ME_et_epsilon, 'String', num2str(handles.method.epsilon));

% update initial
handles = update_method_parameter(handles, hObject);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes method_edit_gui wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = method_edit_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
% The figure can be deleted now
delete(handles.figure1);

%%%%%%%%%%%% Call backs %%%%%%%%%%%%%%%%%%%%%

function ME_et_frequency_step_Callback(hObject, eventdata, handles)

%update parameter value
handles = update_method_parameter(handles, hObject);
guidata(hObject, handles);

function ME_et_relative_Callback(hObject, eventdata, handles)

%update parameter value
handles = update_method_parameter(handles, hObject);
guidata(hObject, handles);

function ME_et_all_fourier_power_Callback(hObject, eventdata, handles)

%update parameter value
handles = update_method_parameter(handles, hObject);
guidata(hObject, handles);

function ME_et_pwelch_width_Callback(hObject, eventdata, handles)

%update parameter value
handles = update_method_parameter(handles, hObject);
guidata(hObject, handles);

function ME_et_dimension_Callback(hObject, eventdata, handles)

%update parameter value
handles = update_method_parameter(handles, hObject);
guidata(hObject, handles);

function ME_et_tau_Callback(hObject, eventdata, handles)

%update parameter value
handles = update_method_parameter(handles, hObject);
guidata(hObject, handles);

function ME_et_tolerance_Callback(hObject, eventdata, handles)

%update parameter value
handles = update_method_parameter(handles, hObject);
guidata(hObject, handles);

function ME_et_epsilon_Callback(hObject, eventdata, handles)

%update parameter value
handles = update_method_parameter(handles, hObject);
guidata(hObject, handles);


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)

% Hint: delete(hObject) closes the figure
if isequal(get(hObject, 'waitstatus'), 'waiting')
% The GUI is still in UIWAIT, us UIRESUME
uiresume(hObject);
else
% The GUI is no longer waiting, just close it
delete(hObject);
end


% --- Executes on button press in ME_pb_ok.
function ME_pb_ok_Callback(hObject, eventdata, handles)
% close the gui
close(handles.figure1);

% --- Executes on button press in ME_pb_cancel.
function ME_pb_cancel_Callback(hObject, eventdata, handles)

% reset the method
handles.output = handles.imported_method;
guidata(hObject, handles);
%close the gui
close(handles.figure1);

% --- Executes on button press in ME_pb_help.
function ME_pb_help_Callback(hObject, eventdata, handles)
% Call documentation of the selected method
%TO CODE
disp('CODE THE DOCUMENTATION !!!!!!!!!!!')


% --- Executes during object creation, after setting all properties.
function ME_et_frequency_step_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.
function ME_et_relative_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.
function ME_et_all_fourier_power_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.
function ME_et_pwelch_width_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.
function ME_et_dimension_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.
function ME_et_tau_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.
function ME_et_tolerance_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.
function ME_et_epsilon_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






