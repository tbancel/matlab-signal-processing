function [EEG, init_parameter_eegfc] = Sigma_converting_data(init_parameter_eegfc)
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
epoch =init_parameter_eegfc.epoch_to_display;   
subject = init_parameter_eegfc.subject_to_display;

EOI=[];
%Loading the ref?rence for the electrodes positions
%models_location='SIGMA_external\models';
if isfield(init_parameter_eegfc,'reference')
ref=init_parameter_eegfc.reference ;
EEG_ref = load(ref); 
else
    if ispc
    EEG_ref = load('SIGMA\SIGMA_external\sigma_econnectome\models\channel_BrainProducts_EasyCap_64.mat');
    end
    if ismac
    EEG_ref = load('SIGMA/SIGMA_external/sigma_econnectome/models/channel_BrainProducts_EasyCap_64.mat');
    end
    
end

nb_chan_ref= length(EEG_ref.Channel(:));

if isfield(init_parameter_eegfc,'EOI')
EOI=init_parameter_eegfc.EOI;
else
    for i=1:nb_chan_ref
        EOI=[EOI i];
    end
end


%Loading the Subject Datas on the base of his name (subject2 -> 2.mat)
ext='.mat';
S=int2str(subject);
name0=strcat(S,ext);
name=strcat('subject_',name0);

pathstr = init_parameter_eegfc.data_location;


subject_filename=fullfile(pathstr,name);

% check if the subject is in the list 

EEG_2 = load(subject_filename);


%Loading the working ref?rence of data used by econectome
dataformatname1=init_parameter_eegfc.sigma_directory;
if ispc
dataformatname2='\SIGMA_external\sigma_econnectome\models\Simulation-Standard-Labels-Exported.mat';
end

if ismac
dataformatname2='/SIGMA_external/sigma_econnectome/models/Simulation-Standard-Labels-Exported.mat';
end


EEG = load(strcat(dataformatname1,dataformatname2));




%the number of channel of the r?f?rence 


% the name and number of channel of our signal
 
ch_names= EEG_2.s_EEG.channel_names;
 
 
 %this part was use for testing bad channels handling


nb_chan = length(ch_names);

%Creating a Localisation structure.
localisation = struct('X',0 , ...
                   'Y',0  , ...
                   'Z',0);

               
% the marks of our r?f?rence: a 3x3 matrix wich lines are respectively :
%NAS-LPA-RPA
NAS=EEG_ref.SCS.NAS;
LPA=EEG_ref.SCS.LPA;
RPA=EEG_ref.SCS.RPA;

marks=[NAS';LPA';RPA'];


if isempty(marks)
    marks = [0.0915420163703690 0 0; -0.007506250228921 0.072950156730491 0 ;  0.007506250228921 -0.072950156730491 0 ];
end


% this loop allows to retrieve positions of the electrodes by postulating
% that electrode X is at the same location on the 16 elctrodes equipement
% than on the 64 electrodes equipement

labels=[];
vidx=[];
bad=[];
nonEEG=[];
for channel = 1:nb_chan
   found=0;
    for channel_ref = 1:nb_chan_ref
        
        if strcmp(upper(ch_names{channel}),upper(EEG_ref.Channel(channel_ref).Name))
           if find(ismember(EOI,channel_ref),1)
       localisation(channel).X = EEG_ref.Channel(channel_ref).Loc(1);
       localisation(channel).Y = EEG_ref.Channel(channel_ref).Loc(2);
       localisation(channel).Z = EEG_ref.Channel(channel_ref).Loc(3);
       
       label_to_add =  ch_names{channel};
       
       if length(label_to_add)>5
           label_to_add=label_to_add(1:5);
       end
       label_to_add=cellstr(label_to_add);
       labels=[labels label_to_add];
       vidx=[vidx channel];
       found=1;
           end
        end
        
    end
    
    % this not a channel contained int the reference file, Hence, this is
    % treated as non EEG channel, theu can be used in some functionnality
    % but not scalp mapping
    
    
    if found==0
%        if find(ismember(EOI,channel),1)
%              
       localisation(channel).X = 0;
       localisation(channel).Y = 0;
       localisation(channel).Z = 0;
          
       label_to_add = ch_names{channel};
       
       if length(label_to_add)>5
           label_to_add=label_to_add(1:5);
       end
       
       label_to_add=cellstr(label_to_add);       
       
        labels=[labels label_to_add];
        nonEEG = [nonEEG channel]   ;
        
%        end
    end
    
end

%this for counting the number of epochs in the specified subject
% data_subject= EEG_2.s_EEG.data(1,1,:);
% max_epoch = length(data_subject);

max_epoch=size(EEG_2.s_EEG.data,3);

vidx=[vidx nonEEG ];
%Selecting the data on the desired epoch 
if max_epoch==1
epoch=1;
  
end
% get the Labelassociated with the displayed epoch
data = EEG_2.s_EEG.data(vidx,:,epoch);
label=EEG_2.s_EEG.labels(1,epoch);




%d?termine wich is the last epoch available
init_parameter_eegfc.available_epochs = max_epoch;
%what is the current label of the epoch
init_parameter_eegfc.label_of_epoch=label;


init_parameter_eegfc.bad=bad;

%compute the maxi and min values of the datas
maximum=max(data);
minimum=min(data);
Final_maximum=max(maximum);
Final_minimum=min(minimum);




% this concat?nate different strings in order to have a filename that is
%more repr?sentative of the signal itself
str1='Simulation-Customized-Locations-subject-N?';
str2=num2str(subject);
str3='-epoch-N?';
str4=num2str(epoch);
name = strcat(str1,str2,str3,str4);

%final step: replace values in EEG by the computed ones
EEG.name= name; % the name of the EEG
EEG.type= 'EEG';
EEG.nbchan= length(vidx); %the number of electrodes
EEG.points= length(EEG_2.s_EEG.data(1,:,1)); % the number of samples in an epoch
EEG.srate= EEG_2.s_EEG.sampling_rate; %the sapling rate
EEG.labeltype= 'customized';
EEG.labels= labels; % channel names in this case
EEG.data=data; %the new datas
EEG.locations=localisation(vidx); %structure of a 3D XYZ 
EEG.marks=marks; %the positions of the references
EEG.unit= 'uV';
EEG.start= 1; 
EEG.end= nb_chan;
EEG.dispchans= nb_chan;
EEG.bad=bad;
EEG.vidx=vidx ;
EEG.min= Final_minimum; %the min of the values in the epoch
EEG.max= Final_maximum; %the maximum of the values of the epoch


% this is used for plottign datas
EEG.label=label; % this is the label of the epoch
EEG.av_epoch=max_epoch; %this is the number of available epochs
EEG.Subject_nbr=subject; %this is the subject index
EEG.epoch=epoch; %this is the epoch index
EEG.nonEEG=nonEEG;


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
% % %----------------------------------------------------------------------




