%% Adapt the EEG data for the SigmaBox
% The sigam box format is presented as follow :
% structure with s_EEG containig sevral informations
% s_EEG. 
% 
%               data: [16x20000x14 double] % The data presented as : Nb_channel x Nb_of_samples x Nb_of_epochs 
%             labels: [1 1 2 2 1 1 1 1 2 2 1 2 1 2] % The labels or the output vector, with the  size of  1 x
%                                                     Nb_of_epochs, idealy the valu should be 1 and -1
%             
%           subject_number: 1 % The index of the subject
%      sampling_rate: 2000 % the sampling rate of the data
%      channel_names: {'Fp1'  'Fp2'  'F7'  'F3'  'Fz'  'F4'  'F8'  'Cz'
%      'CP5'  'CP6'  'P3'  'Pz'  'P4'  'O1'  'Oz'  'O2'} % channel names 

%function Sigma_adapt_input_data() 

% Load the data as Nb_channel x Nb_of_samples x Nb_of_epochs


%data=load('C:\Users\Takfarinas\Documents\BCI toolbox\Protocole_bioeedback\non_opera.mat');
data=load('06_15_rest eyes opened 1 minute_Raw Data.dat');
channel_names={'FP1', 'FP2', 'F7', 'F3', 'F4', 'F8', 'T3', 'C3', 'C4', 'T4', 'T5', 'PO3', 'PO4', 'T6', 'O1', 'O2'};
s_EEG.data=data;
s_EEG.labels=ones(1,size(data,3));
s_EEG.subject_number=1;
s_EEG.sampling_rate=500;
s_EEG.channel_names=channel_names;

save(['subject_' num2str(1) '.mat'],'s_EEG');
