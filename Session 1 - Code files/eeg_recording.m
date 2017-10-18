% delete(findall(0, 'Type', 'figure'));
clear;
close;
clc;

load('artefact_1.mat')
data = s_EEG.data;
Fp1=data(1,:)
% plot(Fp1);

sample_length=length(Fp1);
epoch_number = 20;
epoch_length=sample_length/epoch_number;
epochs=[];

% define the epochs
for i=0:(epoch_number-1)
    for j=0:(epoch_length-1)
        epochs(i+1,j+1)=Fp1(i*epoch_length+j+1);
    end
end

% if epoch(i) is a clean epoch (no artifact) then epochs_label(i) = 1
% otherwise epochs_label(i) = 0 (artifact)
epochs_label=[]

% plotting the epochs with the right color
figure

subplot(2,1,1)
plot(Fp1);
title("EEG recording")
ylabel("mV")

subplot(2,1,2)
for i=0:(epoch_number-1),
    if max(abs(epochs(i+1,:)))>40,
        epochs_label(i+1)=0;
        color = 'r';
    else
        epochs_label(i+1)=1;
        color = 'b';
    end
    X=(i*epoch_length+1):((i+1)*epoch_length);
    plot(X,epochs(i+1,:), color), axis([0 35000 -100 150]);
    hold on
end   
title("EEG recording, threshold = 40mV")
ylabel("mV")

%% hamming windowing

h_window=hamming(epoch_length);
epochs_windowed = [];
diff = [];

figure

subplot(2,1,1)
plot(Fp1);
title("EEG recording")
ylabel("mV")

subplot(2,1,2)
for i=0:(epoch_number-1),
    epochs_windowed(i+1,:)=epochs(i+1,:).*transpose(h_window);
    diff(i+1,:)=epochs(i+1,:)-epochs_windowed(i+1,:);
    X=(i*epoch_length+1):((i+1)*epoch_length);
    plot(X,epochs_windowed(i+1,:)), axis([0 35000 -100 150]);
    hold on
end   
title("Epoched signal")
ylabel("mV")


