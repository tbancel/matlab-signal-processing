function [EEG, init_parameter_eegfc] = Sigma_converting_data_EOI(init_parameter_eegfc)
%==========================================================================
%% This script is part of the BCI toolbox, it's used by the the external 
%Econectome toolbox to convert data from the ESPCI format to a readable
%format for econectome
%==========================================================================
%%The input is init_parameter in wich everything concerning the signal is
%%stored

%the outputs are the converted EEG and the modified init_parameter since
%the toolbox econectome dont use init_parameter i had scope problems that
%forced me with this solution.

% selection of the epoch and the subject to visualize from the initialized
% parameters


name=init_parameter_eegfc.reference;

%Loading the working reférence of data used by econectome
EEG = load('SIGMA\SIGMA_external\sigma_econnectome\models\Simulation-Standard-Labels-Exported.mat');

electrode_names=[];
vidx=[];
bad=[];
nonEEG=[];
marks=[];
NAS=[];
LPA=[];
RPA=[];

%Creating a Localisation structure.
localisation = struct('X',0 , ...
                   'Y',0  , ...
                   'Z',0);



ext = strsplit(name,'.');

if  strcmp(ext{2},'mat')
    EEG_ref = load(name);

if isfield(EEG_ref, 'Ref')
    EEG_ref=EEG_ref.Ref;
end

if isfield(EEG_ref,{'s_EEG'})&&~isfield(EEG_ref,{'Channel'})
   nb_chan = length(EEG_ref.s_EEG.channel_names);
   EEG_ref2 = load('SIGMA\SIGMA_external\sigma_econnectome\models\channel_BrainProducts_EasyCap_64.mat');
   
               
% the marks of our référence: a 3x3 matrix wich lines are respectively :
%NAS-LPA-RPA
NAS=EEG_ref2.SCS.NAS;
LPA=EEG_ref2.SCS.LPA;
RPA=EEG_ref2.SCS.RPA;

ch_names= EEG_ref.s_EEG.channel_names;
nb_chan_ref=length({EEG_ref2.Channel.Name});
for channel = 1:nb_chan
   found=0;
    for channel_ref = 1:nb_chan_ref
        
        if strcmp(ch_names{channel},EEG_ref2.Channel(channel_ref).Name)
           
       localisation(channel).X = EEG_ref2.Channel(channel_ref).Loc(1);
       localisation(channel).Y = EEG_ref2.Channel(channel_ref).Loc(2);
       localisation(channel).Z = EEG_ref2.Channel(channel_ref).Loc(3);
       
       label_to_add =  ch_names{channel};
       
       if length(label_to_add)>5
           label_to_add=label_to_add(1:5);
       end
       label_to_add=cellstr(label_to_add);
         electrode_names=[electrode_names label_to_add];
       vidx=[vidx channel];
       found=1;
           
        end
        
    end
 
end
    
end


if isfield(EEG_ref,{'Channel'})
nb_chan = length(EEG_ref.Channel(:));




% the marks of our référence: a 3x3 matrix wich lines are respectively :
%NAS-LPA-RPA
if isfield(EEG_ref,{'SCS'})
NAS=EEG_ref.SCS.NAS;
LPA=EEG_ref.SCS.LPA;
RPA=EEG_ref.SCS.RPA;
end
marks=[NAS';LPA';RPA'];



% this loop allows to retrieve positions of the electrodes by postulating
% that electrode X is at the same location on the 16 elctrodes equipement
% than on the 64 electrodes equipement


for channel = 1:nb_chan
         
       
            
       localisation(channel).X = EEG_ref.Channel(channel).Loc(1);
       localisation(channel).Y = EEG_ref.Channel(channel).Loc(2);
       localisation(channel).Z = EEG_ref.Channel(channel).Loc(3);
       
       label_to_add =  EEG_ref.Channel(channel).Name;
       
       if length(label_to_add)>5
           label_to_add=label_to_add(1:5);
       end
       
       label_to_add=cellstr(label_to_add);
       electrode_names=[electrode_names label_to_add];
       vidx=[vidx channel];
       found=1;
         
        
     
end
else
          
       
end
    
elseif  strcmp(ext{2},'loc')|| strcmp(ext{2},'locs')|| strcmp(ext{2},'eloc')|| strcmp(ext{2},'sph')|| strcmp(ext{2},'elc')|| strcmp(ext{2},'elp')|| strcmp(ext{2},'elp')||strcmp(ext{2},'xyz')|| strcmp(ext{2},'asc')|| strcmp(ext{2},'dat')||strcmp(ext{2},'ced') 

  [eloc, labels, theta, radius, indices] =readlocs( name );



nb_chan = length(labels);

% this loop allows to retrieve positions of the electrodes by postulating
% that electrode X is at the same location on the 16 elctrodes equipement
% than on the 64 electrodes equipement
for channel = 1:nb_chan
         
       if channel == 1
           LPA = [eloc(channel).X,eloc(channel).Y,eloc(channel).Z];
       
       
       elseif channel == 2
           RPA = [eloc(channel).X,eloc(channel).Y,eloc(channel).Z];
        
       
           elseif channel == 3
            NAS = [eloc(channel).X,eloc(channel).Y,eloc(channel).Z];
         end
                      
       localisation(channel).X = eloc(channel).X;
       localisation(channel).Y = eloc(channel).Y;
       localisation(channel).Z = eloc(channel).Z;
       
       label_to_add =  labels(channel);
       
       if length(label_to_add)>5
           label_to_add=label_to_add(1:5);
       end
       
       label_to_add=cellstr(label_to_add);
       electrode_names=[electrode_names label_to_add];
       vidx=[vidx channel];
       found=1;
       
        
        
     
end
marks=[NAS;LPA;RPA];
else
          
       

end


if isempty(marks)
    marks = [0.0915420163703690 0 0; -0.007506250228921 0.072950156730491 0 ;  0.007506250228921 -0.072950156730491 0 ];
end


% this concaténate different strings in order to have a filename that is
%more représentative of the signal itself

name = 'Reference positions of electrodes';
Fs = 1e4;
data = ones(nb_chan,round(1/Fs));
t = 0:round(1/Fs):1;
for i=1:nb_chan
data(i,:) = sin(2*pi*300*t);
end

%final step: replace values in EEG by the computed ones
EEG.name= name; % the name of the EEG
EEG.type= 'EEG';
EEG.nbchan= nb_chan; %the number of electrodes
EEG.points= round(1/Fs); % the number of samples in an epoch
EEG.srate= Fs; %the sapling rate
EEG.labeltype= 'customized';
EEG.labels= electrode_names; % channel names in this case
EEG.data=data; %the new datas
EEG.locations=localisation; %structure of a 3D XYZ 
EEG.marks=marks; %the positions of the references
EEG.unit= 'uV';
EEG.start= 1; 
EEG.end= nb_chan;
EEG.dispchans= nb_chan;
EEG.bad=bad;
EEG.vidx=vidx ;


init_parameter_eegfc.EOI=vidx;

assignin('base','Ref_info',init_parameter_eegfc);
return;



 end
 
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

