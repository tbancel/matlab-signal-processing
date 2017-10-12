%% Loop for EEG visualisation 
% 1 load the eeg data 
signal_data=load('C:\Users\FOD\Dropbox\SIGMA\SIGMA_data\subject_1.mat');
data=signal_data.s_EEG.data;
labels=signal_data.s_EEG.labels;
subject_number=signal_data.s_EEG.subject_number;
sampling_rate=signal_data.s_EEG.sampling_rate;
channel_names=signal_data.s_EEG.channel_names;
clear signal_data

nb_channel=size(data,1);
nb_epoch=size(data,3);

% plot the signals
epoch_to_display=1;
figure('color','white')
for ch=1:nb_channel
    %if ch<= nb_channel/2
    subplot(nb_channel,1,ch)
    plot(data(ch,:,epoch_to_display))
    legend(channel_names{ch})
    %else
    subplot(nb_channel,1,ch)
    plot(data(ch,:,epoch_to_display))
    legend(channel_names{ch})
    %end
end
   
    