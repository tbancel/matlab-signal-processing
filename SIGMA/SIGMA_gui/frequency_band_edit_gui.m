function varargout = frequency_band_edit_gui(varargin)
% FREQUENCY_BAND_EDIT_GUI MATLAB code for frequency_band_edit_gui.fig
%      FREQUENCY_BAND_EDIT_GUI, by itself, creates a new FREQUENCY_BAND_EDIT_GUI or raises the existing
%      singleton*.
%
%      H = FREQUENCY_BAND_EDIT_GUI returns the handle to a new FREQUENCY_BAND_EDIT_GUI or the handle to
%      the existing singleton*.
%
%      FREQUENCY_BAND_EDIT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FREQUENCY_BAND_EDIT_GUI.M with the given input arguments.
%
%      FREQUENCY_BAND_EDIT_GUI('Property','Value',...) creates a new FREQUENCY_BAND_EDIT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before frequency_band_edit_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to frequency_band_edit_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help frequency_band_edit_gui

% Last Modified by GUIDE v2.5 02-Aug-2017 14:11:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @frequency_band_edit_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @frequency_band_edit_gui_OutputFcn, ...
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


% --- Executes just before frequency_band_edit_gui is made visible.
function frequency_band_edit_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to frequency_band_edit_gui (see VARARGIN)

% Choose default command line output for frequency_band_edit_gui
handles.output = hObject;

% Add input argument
handles.init_parameter = varargin{1};
handles.initial_input = varargin{1};

handles.output = handles.initial_input;
% set the field values
handles = FE_set_frequency_bandsGUI(handles, hObject);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes frequency_band_edit_gui wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = frequency_band_edit_gui_OutputFcn(hObject, eventdata, handles) 
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

if isequal(get(hObject, 'waitstatus'), 'waiting')
% The GUI is still in UIWAIT, us UIRESUME
uiresume(hObject);
else
% The GUI is no longer waiting, just close it
delete(hObject);
end



function FE_ed_delta_mf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function FE_ed_delta_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_delta_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_theta_mf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function FE_ed_theta_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_theta_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_mu_mf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function FE_ed_mu_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_mu_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_alpha_mf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_alpha_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_alpha_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_beta_mf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_beta_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_beta_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_gamma_mf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_gamma_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_gamma_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_gamma_high_mf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);



% --- Executes during object creation, after setting all properties.
function FE_ed_gamma_high_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_gamma_high_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_total_bandwidth_mf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_total_bandwidth_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_total_bandwidth_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_delta_maf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_delta_maf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_delta_maf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_theta_maf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_theta_maf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_theta_maf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_mu_maf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_mu_maf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_mu_maf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_alpha_maf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_alpha_maf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_alpha_maf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_beta_maf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_beta_maf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_beta_maf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_gamma_maf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_gamma_maf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_gamma_maf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_gamma_high_maf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_gamma_high_maf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_gamma_high_maf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FE_ed_total_bandwidth_maf_Callback(hObject, eventdata, handles)
% Update frequency values
handles = FE_update_frequency_bands(handles, hObject);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function FE_ed_total_bandwidth_maf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FE_ed_total_bandwidth_maf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in FE_pb_ok.
function FE_pb_ok_Callback(hObject, eventdata, handles)
close(handles.figure1);

% --- Executes on button press in FE_pb_cancel.
function FE_pb_cancel_Callback(hObject, eventdata, handles)
handles.output = handles.initial_input;
guidata(hObject, handles);
close(handles.figure1);
