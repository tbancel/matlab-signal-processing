function varargout = Results_viz(varargin)
% RESULTS_VIZ MATLAB code for Results_viz.fig
%      RESULTS_VIZ, by itself, creates a new RESULTS_VIZ or raises the existing
%      singleton*.
%
%      H = RESULTS_VIZ returns the handle to a new RESULTS_VIZ or the handle to
%      the existing singleton*.
%
%      RESULTS_VIZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTS_VIZ.M with the given input arguments.
%
%      RESULTS_VIZ('Property','Value',...) creates a new RESULTS_VIZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Results_viz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Results_viz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Results_viz

% Last Modified by GUIDE v2.5 04-Sep-2017 19:32:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Results_viz_OpeningFcn, ...
                   'gui_OutputFcn',  @Results_viz_OutputFcn, ...
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

% --- Executes just before Results_viz is made visible.
function Results_viz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Results_viz (see VARARGIN)

% Choose default command line output for Results_viz
handles.output = hObject;

init_parameter = evalin('base', 'init_parameter');
features_results = evalin('base', 'features_results');
init_method = evalin('base', 'init_method');
performances_results = evalin('base', 'performances_results');
selected_model = evalin('base', 'selected_model');


init_parameter.draw_method_names=[];
init_parameter.draw_method_indexes=[];
for i= 1:length(handles.popupmenu1.String)
    init_parameter.draw_method_names{i}=handles.popupmenu1.String{i};
    init_parameter.draw_method_indexes(i)=i;
end

     
handles.init_parameter=init_parameter;
handles.features_results=features_results;
handles.init_method=init_method;
handles.performances_results=performances_results;
handles.selected_model=selected_model;

draw(hObject, eventdata, handles,1,1);
% Update handles structure
guidata(hObject, handles);

% This sets up the initial plot - only do when we are invisible
% so window can get raised using Results_viz.


% UIWAIT makes Results_viz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Results_viz_OutputFcn(hObject, eventdata, handles)
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
allItems = get(handles.popupmenu1,'string');
selectedIndex = get(handles.popupmenu1,'Value');
selectedItem = allItems{selectedIndex};


init_parameter=handles.init_parameter;

if find( init_parameter.draw_method_indexes,selectedIndex)
  if strcmp(init_parameter.draw_method_names{selectedIndex},selectedItem)
    draw(hObject, eventdata, handles,selectedIndex,0);
  end   
end




% --------------------------------------------------------------------
function FileMenu_Callback(hObject, eventdata, handles)
% hObject    handle to FileMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function OpenMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to OpenMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.fig');
if ~isequal(file, 0)
    open(file);
end

% --------------------------------------------------------------------
function PrintMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to PrintMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg(handles.figure1)

% --------------------------------------------------------------------
function CloseMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to CloseMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = questdlg(['Close ' get(handles.figure1,'Name') '?'],...
                     ['Close ' get(handles.figure1,'Name') '...'],...
                     'Yes','No','Yes');
if strcmp(selection,'No')
    return;
end

delete(handles.figure1)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

init_parameter=handles.init_parameter;
allItems = get(handles.popupmenu1,'string');
selectedIndex = get(handles.popupmenu1,'Value');
selectedItem = allItems{selectedIndex};


handles.init_parameter=init_parameter;

if find( init_parameter.draw_method_indexes,selectedIndex)
  if strcmp(init_parameter.draw_method_names{selectedIndex},selectedItem)
      draw(hObject, eventdata, handles,selectedIndex,1);
  end   
end



% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
     set(hObject,'BackgroundColor','white');
end

 function varargout = draw(hObject, eventdata, handles,selectedIndex,source)
     
init_parameter=handles.init_parameter;
features_results=handles.features_results;
init_method=handles.init_method;
performances_results=handles.performances_results;
selected_model=handles.selected_model;  
delete(findall(gcf,'Tag','somethingUnique'))

method = cellstr(init_parameter.draw_method_names{selectedIndex});

if strcmp(method,'ROC')
        if source ==1
            axis(handles.axes1);
           cla(handles.axes1,'reset')
        else
            f=figure;
            f.Name=method{1};
        end
       [max_auc, index]=max(performances_results.performance(:,8));
    scores=performances_results.scores{2};% negative classe
   
    grid on; grid minor; hold on
    %[max_auc, index]=max(AUC);
    [Xa,Ya,~,~,OPTROCPT] = perfcurve(features_results.labels,scores(index,:),1);
    plot(Xa,Ya,'r*',0:1,0:1,'g',1:-0.1:0,0:0.1:1,'y',OPTROCPT(1),OPTROCPT(2),'ks','markersize',15)
    xlabel('False positive rate')
    ylabel('True positive rate')
    title('ROC for Classification')
    dim = [0.3 0.0 0.6 0.3];
    str =['Max AUC = ' num2str(max_auc*100,4) '% for Nb feat = :  ' num2str(index) ];
    htxtbox =annotation('textbox',dim,'String',str,'FitBoxToText','on','Tag' , 'somethingUnique');
elseif strcmp(method,'Confusion Matrix')
        if source ==1
            axis(handles.axes1);
            cla(handles.axes1,'reset')
        else
            f=figure;
           f.Name=method{1};
        end
        [~, index_max_auc]=max(performances_results.performance(:,8));
        [confusion_matrix,~] = confusionmat(features_results.labels,performances_results.prediction(index_max_auc,:));
        opt=confMatPlot('defaultOpt');
        opt.className={'High', 'Low'};
        opt.mode='both';
        opt.mode='percentage';
        opt.format='8.2f';
        confMatPlot(confusion_matrix, opt);
        
elseif strcmp(method,'Performance')
            f = figure('Position', [100 100 750 400],'Resize','off');
            f.Name=method{1};
            data=performances_results.performance;
            t = uitable('Parent', f, 'Position', [25 50 700 350], 'Data',data);
            t.ColumnName = performances_results.performance_infos;
elseif strcmp(method,'Prediction')
            f = figure('Position', [100 100 1000 400],'Resize','off');
            f.Name=method{1};
            data=performances_results.prediction;
            t = uitable('Parent', f, 'Position', [25 50 950 350], 'Data',data);
            
elseif strcmp(method,'Best Organisation Voted')
            f = figure('Position', [100 100 1000 400],'Resize','off');
           f.Name=method{1};
            data=cell2mat(performances_results.best_organisation_voted);
            t = uitable('Parent', f, 'Position', [25 50 950 350], 'Data',data);
             t.ColumnName = performances_results.best_organisation_infos;
             
             
elseif strcmp(method,'3D Confusion Matrix')
        if source ==1
            axis(handles.axes1);
            cla(handles.axes1,'reset')
        else
            f=figure;
            f.Name=method{1};
        end
        [~, index_max_auc]=max(performances_results.performance(:,8));
        [confusion_matrix,~] = confusionmat(features_results.labels,performances_results.prediction(index_max_auc,:));
        predicted_groups=performances_results.prediction(index_max_auc,:);
        actual_groups=features_results.labels;
        [confusion_matrix, overall_pcc, group_stats, groups_list] = confusionMatrix3d(predicted_groups,actual_groups);
                
elseif strcmp(method,'Circular Confusion Matrix')
        if source ==1
            axis(handles.axes1);
            cla(handles.axes1,'reset')
        else
            f=figure;
           f.Name=method{1};
        end
        [~, index_max_auc]=max(performances_results.performance(:,8));
        [confusion_matrix,~] = confusionmat(features_results.labels,performances_results.prediction(index_max_auc,:));
        predicted_groups=performances_results.prediction(index_max_auc,:);
        actual_groups=features_results.labels;
        partest(confusion_matrix,1);
        
elseif strcmp(method,'Rectangular Confusion Matrix')
        if source ==1
            axis(handles.axes1);
            cla(handles.axes1,'reset')
        else
            f=figure;
            f.Name=method{1};
        end
        [~, index_max_auc]=max(performances_results.performance(:,8));
        [confusion_matrix,~] = confusionmat(features_results.labels,performances_results.prediction(index_max_auc,:));
        predicted_groups=performances_results.prediction(index_max_auc,:);
        actual_groups=features_results.labels;
        partest(confusion_matrix,2);
        
elseif strcmp(method,'Text')

       
        [~, index_max_auc]=max(performances_results.performance(:,8));
        [confusion_matrix,~] = confusionmat(features_results.labels,performances_results.prediction(index_max_auc,:));
        predicted_groups=performances_results.prediction(index_max_auc,:);
        actual_groups=features_results.labels;
        %partest(confusion_matrix,2);
        output = partest_with_output(confusion_matrix,2);
        data=nan(length(output.sizes),2);
        
        
        
        for i=1:length(output.sizes)
           
            if output.sizes(i)>1
                v1=output.value(i);
                v2=output.value(i+1);
                i=i+1;
                data(i,1)=v1;
                data(i,2)=v2;
            else
                v1=output.value(i);
                data(i,1)=v1;
          
            end
            %data(i,1)=cellstr(String);
%             data(i,1)=v1;
%             data(i,2)=v2;
        end
        str = strsplit(output.string,' ');
        f = figure('Position', [100 100 750 400],'Resize','off');
        f.Name=method{1};
        %data={'Prevalence',num2str(pr);'Sensitivity',num2str(SS(1))};
        t = uitable('Parent', f, 'Position', [25 50 700 350], 'Data',data);
        t.RowName = str;
elseif strcmp(method,'Scatter plot')
     if source ==1
            axis(handles.axes1);
            cla(handles.axes1,'reset')
     else
            f=figure;
           f.Name=method{1};
     end

Sigma_gscatter_plot(init_parameter,features_results,init_parameter.feature_index)
        
elseif strcmp(method,'Prediction indicator')
            f = figure('Position', [100 100 1000 400],'Resize','off');
            f.Name=method{1};
            data=performances_results.prediction;
            
             for i=1:length(data(:,1))
                prediction=zeros(1,length(data(1,:)));
                positive = find(data(i,:)==features_results.labels);
                
                prediction(positive)=1;
                 data(i,:)= prediction;
             end
            
            imagesc(data);
            colormap;
            ax = gca;
            load('MyColormaps','mycmap')
            colormap(ax,mycmap);
            caxis([0 1]);
            
else
    warndlg(sprintf('This méthod is not existant  \n Or may not be coded yet.'))
    

            
end
