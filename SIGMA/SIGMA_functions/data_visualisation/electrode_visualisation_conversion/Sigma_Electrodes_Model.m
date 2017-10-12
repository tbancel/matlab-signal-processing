function varargout = Sigma_Electrodes_Model(varargin)
%%
%This GUI is use for modification of Model Files. It can be used as part of
%the Sigma Toolbox or totally idependently


%%
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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

%assignin('base','a_rms',a_rms);


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;


%set(handles.axes1, 'Units', 'pixels', 'Position', [10, 10, 700, 700]);
set(hObject,'WindowButtonDownFcn', @mousebuttondownCallback); 


W = evalin('base','whos'); %or 'base'
if ismember('init_parameter',[W(:).name]);
Ref_info=evalin('base','init_parameter');
else
     Ref_info=[];
end


if ~isfield(Ref_info,'reference')
filename='channel_BrainProducts_EasyCap_64.mat';
pathname='SIGMA\SIGMA_external\sigma_econnectome\models\';
fileName=strcat(pathname,filename);
Ref_info.reference = fileName;

linkString = findobj(gcf,'tag','Link');
set(linkString, 'string',pathname );
else
    filename = Ref_info.reference;
end

fileString = findobj(gcf,'tag','text2');
set(fileString, 'string',filename );


 
[eeg2,init] = Sigma_converting_data_EOI(Ref_info);
eeg = struct('EEG',eeg2);
EEG = Sigma_converting_data_EOI2(eeg);

if ~isfield(Ref_info,'EOI')
Ref_info.EOI = init.EOI;
end
assignin('base','Ref_info',Ref_info);

draw_All();


guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

 function varargout = draw_All()

 Ref_info = evalin('base', 'Ref_info');
 
 
ax1 = findobj(gcf,'tag','axes1');
axes(ax1) ;
 
[eeg2,init] = Sigma_converting_data_EOI(Ref_info);
eeg = struct('EEG',eeg2);
EEG = Sigma_converting_data_EOI2(eeg);

if length(init.EOI)~=length(Ref_info.EOI)
    Ref_info.EOI=EEG.vidx;
end
for i=1:length(init.EOI)
    if isnan(Ref_info.EOI(i))
        init.EOI(i)=nan;
    end
end

Ref_info.EOI = init.EOI;
assignin('base','Ref_info',Ref_info);
names = fields(Ref_info);

for i=1:length(names)
    
if strcmp(names{i},'reference')||strcmp(names{i},'EOI')
s=strcat('init_parameter.',names{i});
s2=strcat('Ref_info.',names{i});
s3=strcat(s,'=',s2);
evalin( 'base', s3 );
end
  
end
init.Eaxes = nan(length(EEG.vidx),2);        

ch_names= EEG.labels;
init.names = ch_names;
nb_chan = length(ch_names);

%prepare a chanloc structure according to eegLab reference
chanlocs = struct('theta',0 , ...
                   'radius',0  , ...
                   'labels',0,...
                   'sph_theta',0,...
                   'sph_phi',0,...
                   'sph_radius',0,...
                   'X',0,...
                   'Y',0,...
                   'Z',0);		
		
		
%iteratte over all channel in order to fill-in all necessary informations 
%for the channels
for channel = 1:nb_chan
   
         
       % attribute X,Y,Z possitions of the 3D plan
       chanlocs(channel).X=EEG.locations(channel).X;
       chanlocs(channel).Y=EEG.locations(channel).Y;
       chanlocs(channel).Z=EEG.locations(channel).Z;
      
       X=chanlocs(channel).X;
       Y=chanlocs(channel).Y;
       Z=chanlocs(channel).Z;
        
      % compute the radius and the theta according to eegLab 
      
      
      name=Ref_info.reference;
      ext = strsplit(name,'.');
      %if  ~strcmp(ext{2},'elc')    
      [angle radius] = cart2topo(X,Y,Z);
%       else       
%       [angle radius] = cart2topo(Y,-X,Z);
%       end
       chanlocs(channel).theta= angle;       
       chanlocs(channel).radius= radius;
       
       %give the channel name
       chanlocs(channel).labels=ch_names{channel};      
       
       %and the spherical informations
       chanlocs(channel).sph_theta=EEG.locations(channel).sph_theta;
       chanlocs(channel).sph_phi=EEG.locations(channel).sph_phi;
       chanlocs(channel).sph_radius=EEG.locations(channel).sph_radius;
       
       EEG.chanlocs(channel)=chanlocs(channel);
       
    
end



%plot the figure

% User Defined Defaults:
noplot  = 'off';
handle = [];
Zi = [];



chanval = NaN;
icadefs % read defaults:  MAXTOPOPLOTCHANS, DEFAULT_ELOC
INTERPLIMITS = 'head';  % head, electrodes
MAPLIMITS = 'absmax';   % absmax, maxmin, [values]
GRID_SCALE = 67;
CONTOURNUM = 6;
STYLE = 'both';       % both,straight,fill,contour,blank
HCOLOR = [0 0 0];ECOLOR = [0 0 0];
CONTCOLOR = [0 0 0];
ELECTRODES = 'on';      % ON OFF LABEL
EMARKER = '.';
EMARKERSIZE = [];     % DEFAULTS SET IN CODE 
EFSIZE = get(0,'DefaultAxesFontSize');
HLINEWIDTH = 2;
SHADING = 'flat';     % flat or interp
shrinkfactor = 'off';
DIPOLE  = [];
DIPNORM   = 'off';
DIPLEN    = 1;
DIPSCALE  = 1;
DIPORIENT  = 1;
DIPCOLOR  = [0 0 0];
VERBOSE = 'on';
MASKSURF = 'off';

%
%%%%%%%%%%%%%%%%%%%%%%% Handle arguments %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
loc_file = EEG.chanlocs;

long=length(EEG.chanlocs);
Vl=ones(long,1);


nargs = nargin;


%       fprintf(['This is an example of an electrode location file,\n',...
%                'an ascii file consisting of the following four columns:\n',...
%                ' channel_number degrees arc_length channel_name\n\n',...
%                'Example:\n',...
%                ' 1               -18    .352       Fp1.\n',...
%                ' 2                18    .352       Fp2.\n',...
%                ' 5               -90    .181       C3..\n',...
%                ' 6                90    .181       C4..\n',...
%                ' 7               -90    .500       A1..\n',...
%                ' 8                90    .500       A2..\n',...
%                ' 9              -142    .231       P3..\n',...
%                '10               142    .231       P4..\n',...
%                '11                 0    .181       Fz..\n',...
%                '12                 0    0          Cz..\n',...
%                '13               180    .181       Pz..\n\n',...
%                'The model head sphere has a diameter of 1.\n',...
%                'The vertex (Cz) has arc length 0. Channels with arc \n',...
%                'lengths > 0.5 are not plotted nor used for interpolation.\n'...
%                'Zero degrees is towards the nasion. Positive angles\n',...
%                'point to the right hemisphere; negative to the left.\n',...
%                'Channel names should each be four chars, padded with\n',...
%                'periods (in place of spaces).\n'])
%
if isempty(loc_file)
  loc_file = 0;
end



%%%%%%%%%%%%%%%%%%%% Read the channel location information %%%%%%%%%%%%%%%%%%%%%%%%
% 
if isstr(loc_file)
	[tmpeloc labels Th Rd] = readlocs(loc_file,'filetype','loc');
else % a locs struct
	[tmpeloc labels Th Rd] = readlocs(loc_file);
end

if strcmpi(shrinkfactor, 'off') & isfield(tmpeloc, 'shrink'), shrinkfactor = tmpeloc(1).shrink; end;
labels = strvcat(labels);
Th = pi/180*Th;                              % convert degrees to radians
    


if isstr(shrinkfactor)
	if (strcmp(lower(shrinkfactor), 'on') & max(Rd) >0.5) | strcmp(lower(shrinkfactor), ...
                       'force')
		squeeze = 1 - 0.5/max(Rd); %(2*max(r)-1)/(2*rmax);
		if strcmpi(VERBOSE, 'on')
            fprintf('topoplot(): electrode radii shrunk towards vertex by %2.3g to show all\n', ...
                       squeeze);
        end;
		Rd = Rd-squeeze*Rd; % squeeze electrodes in squeeze*100% to have all inside
	end;	
else 
    if strcmpi(VERBOSE, 'on')
        fprintf('topoplot(): electrode radius shrunk towards vertex by %2.3g\n', shrinkfactor);
	end;
    Rd = Rd-shrinkfactor*Rd; % squeeze electrodes by squeeze*100% to have all inside
end;
	  
enum = find(Rd <= 0.5);                     % interpolate on-head channels only
if length(enum) > length(Rd)
    if strcmpi(VERBOSE, 'on')
        fprintf('topoplot(): %d/%d electrode not shown (radius>0.5)\n', ...
                   length(enum)-length(Rd),length(Rd));    
    end; 
end;	
if ~isempty(Vl)
	if length(Vl) == length(Th)
		Vl = Vl(enum);
	else if strcmp(STYLE,'blank')
            tmpVl=[];
            cc=1;
            for kk=1:length(Vl)
                tmpind = find(enum == Vl(kk));
                if isempty(tmpind)
                    if strcmpi(VERBOSE, 'on')
                        disp( [ ...
    'topoplot() Warning: one or more channels are not visible (use "Edit' ...
    ' > Channel locations" to modify the montage shrink factor).' ] );
                    end;
                else
                    tmpVl(cc) = tmpind;
                    cc=cc+1;
                end;
            end
            Vl=tmpVl;
		end;
	end;	
end;
Th = Th(enum);
Rd = Rd(enum);
labels = labels(enum,:);
[x,y] = pol2cart(Th,Rd);      % transform from polar to cartesian coordinates
rmax = 0.5;

if ~strcmpi(STYLE,'blank') % if draw scalp map
  %
  %%%%%%%%%%%%%%%% Find limits for interpolation %%%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  if strcmp(INTERPLIMITS,'head')
    xmin = min(-.5,min(x)); xmax = max(0.5,max(x));
    ymin = min(-.5,min(y)); ymax = max(0.5,max(y));
  else % interplimits = rectangle containing electrodes
    xmin = max(-.5,min(x)); xmax = min(0.5,max(x));
    ymin = max(-.5,min(y)); ymax = min(0.5,max(y));
  end
  
  %
  %%%%%%%%%%%%%%%%%%%%%%% Interpolate scalp map data %%%%%%%%%%%%%%%%%%%%
  %
  xi = linspace(xmin,xmax,GRID_SCALE);   % x-axis description (row vector)
  yi = linspace(ymin,ymax,GRID_SCALE);   % y-axis description (row vector)
  [Xi,Yi,Zi] = griddata(y,x,Vl,yi',xi,'v4'); % interpolate data
  %
  %%%%%%%%%%%%%%%%%%%%%%% Mask out data outside the head %%%%%%%%%%%%%%%%%
  %
  mask = (sqrt(Xi.^2+Yi.^2) <= rmax);
  ii = find(mask == 0);
  Zi(ii) = NaN;
  %
  %%%%%%%%%%%%%%%%%%%%%%% return designated channel value %%%%%%%%%%%%%%%%
  %
  if exist('chanrad')
      chantheta = (chantheta/360)*2*pi;
      chancoords = round(34+33.5*2*chanrad*[cos(-chantheta),-sin(-chantheta)]);
      if chancoords(1)<1 | chancoords(1) > 67 | chancoords(2)<1 | chancoords(2)>67
         
      else
        chanval = Zi(chancoords(1),chancoords(2));
      end
  end
  %
  %%%%%%%%%%%%%%%%%%%%%%% Return interpolated image only  %%%%%%%%%%%%%%%%%
  %
   if strcmpi(noplot, 'on') 
       fprintf('topoplot(): no plot requested.\n')
       return;
   end
  
 
   if strcmpi(noplot, 'on') 
       fprintf('topoplot(): no plot requested.\n')
       return;
   end

   cla
   hold on
   set(gca,'Xlim',[-rmax*1.3 rmax*1.3],'Ylim',[-rmax*1.3 rmax*1.3])
   % pos = get(gca,'position');
   % fprintf('Current axes size %g,%g\n',pos(3),pos(4));

  if strcmp(ELECTRODES,'labelpoint') |  strcmp(ELECTRODES,'numpoint')
    text(-0.6,-0.6, ...
    [ int2str(length(Rd)) ' of ' int2str(length(tmpeloc)) ' electrode locations shown']);
    text(-0.6,-0.7, ...
    [ 'Click on electrodes to toggle name/number']);
    % a = textsc('Channel locations', 'title');
    a = title('Channel locations');
    set(a, 'fontweight', 'bold');
  end;

  if length(Vl) < length(enum)
      for kk = 1:length(Vl)
          if exist('EMARKERSIZE1CHAN') == 1
              hp2 = plot(y(Vl(kk)),x(Vl(kk)),'.','Color', 'red', 'markersize', EMARKERSIZE1CHAN);
          else
              hp2 = plot(y(Vl(kk)),x(Vl(kk)),'.','Color', 'red', 'markersize', 40);
              hold on
          end;
      end
  end;
end

if exist('handle') ~= 1
    handle = gca;
end;

%
% %%%%%%%%%%%%%%%%%%%%%%%%%%% Draw head %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
l = 0:2*pi/100:2*pi;
basex = .18*rmax;  
tip = rmax*1.15; base = rmax-.004;
EarX = [.497 .510 .518 .5299 .5419 .54 .547 .532 .510 .489];
EarY = [.0555 .0775 .0783 .0746 .0555 -.0055 -.0932 -.1313 -.1384 -.1199];

%
% %%%%%%%%%%%%%%%%%%% Plot electrodes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
if strcmp(ELECTRODES,'on') 
  if isempty(EMARKERSIZE)
   EMARKERSIZE = 30;
   init.pointSize = 30;  
   if length(y)>=32 
    EMARKERSIZE = 25;
    EFSIZE=9;
    init.pointSize = 15;    
   end
   if length(y)>=65
    EMARKERSIZE =20;
     EFSIZE=6;
     init.pointSize = 20;
   end
  if length(y)>=129
    EMARKERSIZE =15;
     EFSIZE=6;
     init.pointSize = 15;
  end
  if length(y)>=200
    EMARKERSIZE = 5;
     EFSIZE=6;
     init.pointSize =10;
   end
  end
  

  
  for i = 1:length(Ref_info.EOI)
      if find(Ref_info.EOI==i);
          if ~isnan(Ref_info.EOI(i))
         ECOLOR = [0 1 0];
         hp2 = plot(y(Ref_info.EOI(i)),x(Ref_info.EOI(i)),EMARKER,'Color',ECOLOR,'markersize',EMARKERSIZE);
         init.Eaxes(:,1)= x; 
         init.Eaxes(:,2)= y;     
         
         
         
        text(y(i),x(i)-0.03,labels(i,:),'HorizontalAlignment','center',...
        'VerticalAlignment','middle','Color',ECOLOR,...
        'FontSize',EFSIZE)

          end
      else
         ECOLOR = [0 0 0];
         hp2 = plot(y(i),x(i),EMARKER,'Color',ECOLOR,'markersize',EMARKERSIZE);
         

        text(y(i),x(i)-0.03,labels(i,:),'HorizontalAlignment','center',...
        'VerticalAlignment','middle','Color',ECOLOR,...
        'FontSize',EFSIZE)
         
      end
  end
 
  

elseif strcmp(ELECTRODES,'labelpoint')
 if isempty(EMARKERSIZE)
   EMARKERSIZE = 10;
   if length(y)>=32 
    EMARKERSIZE = 8;
   elseif length(y)>=64
    EMARKERSIZE = 6;
   elseif length(y)>=100
    EMARKERSIZE = 3;
   elseif length(y)>=200
    EMARKERSIZE = 1;
   end
 end
  
 
 
 
  hp2 = plot(y,x,EMARKER,'Color',ECOLOR,'markersize',EMARKERSIZE);
 
  for i = 1:size(labels,1)
    hh(i) = text(y(i)+0.01,x(i),labels(i,:),'HorizontalAlignment','left',...
	'VerticalAlignment','middle','Color', ECOLOR,'userdata', num2str(enum(i)), ...
	'FontSize',EFSIZE, 'buttondownfcn', ...
	    ['tmpstr = get(gco, ''userdata'');'...
	     'set(gco, ''userdata'', get(gco, ''string''));' ...
	     'set(gco, ''string'', tmpstr); clear tmpstr;'] );
  end
elseif strcmp(ELECTRODES,'numpoint')
 if isempty(EMARKERSIZE)
   EMARKERSIZE = 10;
   if length(y)>=32 
    EMARKERSIZE = 8;
   elseif length(y)>=64
    EMARKERSIZE = 6;
   elseif length(y)>=100
    EMARKERSIZE = 3;
   elseif length(y)>=200
    EMARKERSIZE = 1;
   end
  end
  hp2 = plot(y,x,EMARKER,'Color',ECOLOR,'markersize',EMARKERSIZE);
 
  for i = 1:size(labels,1)
    hh(i) = text(y(i)+0.01,x(i),num2str(enum(i)),'HorizontalAlignment','left',...
	'VerticalAlignment','middle','Color', ECOLOR,'userdata', labels(i,:) , ...
	'FontSize',EFSIZE, 'buttondownfcn', ...
	    ['tmpstr = get(gco, ''userdata'');'...
	     'set(gco, ''userdata'', get(gco, ''string''));' ...
	     'set(gco, ''string'', tmpstr); clear tmpstr;'] );
  end
elseif strcmp(ELECTRODES,'numbers')
  for i = 1:size(labels,1)
    text(y(i),x(i),int2str(enum(i)),'HorizontalAlignment','center',...
	'VerticalAlignment','middle','Color',ECOLOR,...
	'FontSize',EFSIZE)
  end
end

 for i = 1:length(Ref_info.EOI)
      
      if Ref_info.EOI(i)==0
          Ref_info.EOI(i)= nan;
      end
  end



%
%%%%%%%%%%%%%%%%%%%%% Plot Head, Ears, Nose %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
plot(cos(l).*rmax,sin(l).*rmax,...
    'color',HCOLOR,'Linestyle','-','LineWidth',HLINEWIDTH); % plot head

plot([.18*rmax;0;-.18*rmax],[base;tip;base],...
    'Color',HCOLOR,'LineWidth',HLINEWIDTH); % plot nose
   
plot(EarX,EarY,'color',HCOLOR,'LineWidth',HLINEWIDTH)  % plot left ear
plot(-EarX,EarY,'color',HCOLOR,'LineWidth',HLINEWIDTH) % plot right ear

hold off
axis off
axis square;

assignin('base','init',init);
assignin('base','Ref_info',Ref_info);

notActivatedColor=[0.0,0.0,0.0];
activatedColor = [0.0,1.0,0.0];


t = 0:round(1/200):1;
data = sin(2*pi*300*t);

% plot(data,'color', non_eeg_color, 'clipping','on');
ax7 = findobj(gcf,'tag','axes7');
ax6 = findobj(gcf,'tag','axes6');
 set(ax7, 'userdata',data ,'color', activatedColor);
 set(ax6, 'userdata',data ,'color', notActivatedColor);
% Update handles structure

try, icadefs; set(gcf, 'color', BACKCOLOR); catch, end; % set std background color

function mousebuttondownCallback(src, evnt) 

hfig = gcf;
Ref_info = evalin('base', 'Ref_info');
init = evalin('base', 'init');

scale = getappdata(hfig,'SCALE');
mainaxes = findobj(hfig,'tag','axes1'); 

currentxlim = get(mainaxes, 'Xlim');
currentylim = get(mainaxes, 'Ylim');
mousepos = get(mainaxes, 'currentpoint');
position = get(mainaxes, 'Position');

ratio = currentxlim(2)/0.5;

x = (mousepos(1, 1)/currentxlim(1,2))*ratio; 
y = (mousepos(1, 2)/currentylim(1,2))*ratio;

%x = mousepos(1, 1)+0.15; 
%y = (mousepos(1, 2)+0.15)/currentylim(1,2);


Xmin = position(1);
Ymin = position(2);
Xmax = position(3);
Ymax = position(4);

Xlength=Xmax-Xmin;
Ylength=Ymax-Ymin;

lengthOI=max(Xlength,Ylength);

radius_of_circle = 0.05;
%init.pointSize/lengthOI;

if isempty(mousepos)
    return;
end

% if the mouse is not in the viewing window
if x<=1&&y<=1
   selectype = lower(get(hfig,'SelectionType'));
   
if strcmp(selectype,'normal')
   for e_cpt=1:length(init.Eaxes)
       rep='';
       
       if x-radius_of_circle <= init.Eaxes(e_cpt,2)/0.5 && y-radius_of_circle <= init.Eaxes(e_cpt,1)/0.5 && x+radius_of_circle >= init.Eaxes(e_cpt,2)/0.5&& y+radius_of_circle >= init.Eaxes(e_cpt,1)/0.5
           rep='yatta';          
           electrode_to_disable=find(Ref_info.EOI==e_cpt);
          if isnan(Ref_info.EOI(e_cpt))
             Ref_info.EOI(e_cpt)=e_cpt;
          else
             Ref_info.EOI(electrode_to_disable)=[nan];
          end          
       end
       
   end
  
 
    assignin('base','Ref_info',Ref_info);
    draw_All()
end 
    
end

     

function Menu_popup_Callback(hObject, eventdata, handles)
% hObject    handle to Menu_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function EOI_Callback(hObject, eventdata, handles)
% hObject    handle to EOI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------

hfig = gcf;
Ref_info = evalin('base', 'Ref_info');
init= evalin('base', 'init');

default = [];
[sel,ok] = listdlg('ListString',init.names,'Name','Interesing électrodes','InitialValue',default);
if ok == 0 || isempty(sel)
    return;
end

 
     for j=1:length(Ref_info.EOI())
         if isnan(Ref_info.EOI(j))
             Ref_info.EOI(j)=j;
         end
         if ismember(Ref_info.EOI(j),sel)
             Ref_info.EOI(j)=j;
         else
             Ref_info.EOI(j)=nan;
         end
         
     end


 assignin('base','Ref_info',Ref_info);
 draw_All()
 



function Save_ref_Callback(hObject, eventdata, handles)
% hObject    handle to Save_ref (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Ref_info = evalin('base', 'Ref_info');
nameString = Ref_info.reference;

ext = strsplit(nameString,'.');

if  strcmp(ext{2},'mat')
    
 EOI=Ref_info.EOI;
List=[];
for i=1:length(EOI)
    if isnan(EOI(i))
        List = [List i];
    end
end

EOI(List)=[];
Ref=load(nameString);
if isfield(Ref,{'s_EEG'})
     error('not supported yet')
  return;
 else
toto=Ref.Channel(EOI);
end
Ref.Channel=[];
Ref.Channel=toto;
[filename, pathname] = uiputfile(...
 {'*.mat';  },...
 'Save as');

save(strcat(pathname,filename),'Ref');

elseif  strcmp(ext{2},'loc')|| strcmp(ext{2},'locs')|| strcmp(ext{2},'eloc')|| strcmp(ext{2},'sph')|| strcmp(ext{2},'elc')|| strcmp(ext{2},'elp')|| strcmp(ext{2},'elp')||strcmp(ext{2},'xyz')|| strcmp(ext{2},'asc')|| strcmp(ext{2},'dat')||strcmp(ext{2},'ced') 
[eloc, labels, theta, radius, indices] =readlocs( nameString );
EOI=Ref_info.EOI;
List=[];
for i=1:length(EOI)
    if isnan(EOI(i))
        List = [List i];
    end
end
EOI(List)=[];


toto=eloc(EOI);
eloc=[];
eloc=toto;


[filename, pathname] = uiputfile(...
 {'*.loc';'*.sph';'*.sfp';'*.xyz';'*.polhemus';'*.besa';'*.chanedit';'*.custom' },...
 'Save as');

title = strsplit(filename,'.');

writelocs(eloc, filename,'filetype',title{2});
else
    
end

function uipushtool1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 Ref_info= evalin('base', 'Ref_info');
 [filename, pathname] = uigetfile('*', 'Select a MATLAB code file');
if isequal(filename,0)
   disp('User selected Cancel')
   return;
else
   disp(['User selected ', fullfile(pathname, filename)])
end


fileName=strcat(pathname,filename);
Ref_info.reference=fileName;


 for j=1:length(Ref_info.EOI())
         if isnan(Ref_info.EOI(j))
             Ref_info.EOI(j)=j;
         end
 end

assignin('base','Ref_info',Ref_info);

fileString = findobj(gcf,'tag','text2');
set(fileString, 'string',filename );

linkString = findobj(gcf,'tag','Link');
set(linkString, 'string',pathname );


draw_All();


% --- Executes on button press in reference_IO.
function reference_IO_Callback(hObject, eventdata, handles)
% hObject    handle to reference_IO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  Ref_info= evalin('base', 'Ref_info');
 [filename, pathname] = uigetfile('*', 'Select a MATLAB code file');
if isequal(filename,0)
   disp('User selected Cancel')
   return;
else
   disp(['User selected ', fullfile(pathname, filename)])
end


fileName=strcat(pathname,filename);
Ref_info.reference=fileName;


 for j=1:length(Ref_info.EOI())
         if isnan(Ref_info.EOI(j))
             Ref_info.EOI(j)=j;
         end
 end

assignin('base','Ref_info',Ref_info);

fileString = findobj(gcf,'tag','text2');
set(fileString, 'string',filename );

linkString = findobj(gcf,'tag','Link');
set(linkString, 'string',pathname );


draw_All();


% --------------------------------------------------------------------
function uipushtool3_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% hObject    handle to Save_ref (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Ref_info = evalin('base', 'Ref_info');
nameString = Ref_info.reference;

ext = strsplit(nameString,'.');

if  strcmp(ext{2},'mat')
  
Ref=load(nameString);
EOI=Ref_info.EOI;
List=[];
for i=1:length(EOI)
    if isnan(EOI(i))
        List = [List i];
    end
end

EOI(List)=[];

toto=Ref.Channel(EOI);
Ref.Channel=[];
Ref.Channel=toto;
[filename, pathname] = uiputfile(...
 {'*.mat';  },...
 'Save as');

save(strcat(pathname,filename),'Ref');
elseif  strcmp(ext{2},'loc')|| strcmp(ext{2},'locs')|| strcmp(ext{2},'eloc')|| strcmp(ext{2},'sph')|| strcmp(ext{2},'elc')|| strcmp(ext{2},'elp')|| strcmp(ext{2},'elp')||strcmp(ext{2},'xyz')|| strcmp(ext{2},'asc')|| strcmp(ext{2},'dat')||strcmp(ext{2},'ced') 
[eloc, labels, theta, radius, indices] =readlocs( nameString );
EOI=Ref_info.EOI;
List=[];
for i=1:length(EOI)
    if isnan(EOI(i))
        List = [List i];
    end
end
EOI(List)=[];


toto=eloc(EOI);
eloc=[];
eloc=toto;


[filename, pathname] = uiputfile(...
 {'*.loc';'*.sph';'*.sfp';'*.xyz';'*.polhemus';'*.besa';'*.chanedit';'*.custom' },...
 'Save as');

title = strsplit(filename,'.');

writelocs(eloc, filename,'filetype',title{2});
else
    
end



% % %----------------------------------------------------------------------


% --- Executes on button press in Save_ref.


% --------------------------------------------------------------------


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
evalin( 'base', 'clear(''init'')' )
evalin( 'base', 'clear(''Ref_info'')' )
delete(hObject);

%%
% % %----------------------------------------------------------------------
% % %                  Brain Computer Interface team
% % % 
% % %                            _---~~(~~-_.
% % %                          _{        )   )
% % %                        ,   ) -~~- ( ,-' )_
% % %                       (  `-,_..`., )-- '_,)
% % %                      ( ` _)  (  -~( -_ `,  }
% % %                      (_-  _  ~_-~~~~`,  ,' )
% % %                        `~ -^(    __;-,((()))
% % %                              ~~~~ {_ -_(())
% % %                                     `\  }
% % %                                       { }
% % %   File modified by Joffrey THOMAS
% % %   Creation Date : 08/09/2017
% % %   Updates and contributors :
% % %
% % %   Citation: [creator and contributor names], comprehensive BCI
% % %             toolbox, available online 2016.
% % %           
% % %   Contact info : joffrey.thomas.18@eigsi.fr        
% % %   Copyright of the contributors, 2016
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------
