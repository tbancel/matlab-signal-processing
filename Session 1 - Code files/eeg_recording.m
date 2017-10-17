% delete(findall(0, 'Type', 'figure'));
clear;
close;
clc;

load('/Users/tbancel/Desktop/MS_BME/UE 3.6-7 BCI/matlab-signal-processing/artefact_1.mat')
data = s_EEG.data;
Fp1=data(1,:)
plot(Fp1);

sample_length=length(Fp1)
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
for i=0:(epoch_number-1),
    if max(abs(epochs(i+1,:)))>40,
        epochs_label(i+1)=0;
        color = 'r';
    else
        epochs_label(i+1)=1;
        color = 'b';
    end
    X=(i*epoch_length+1):((i+1)*epoch_length);
    plot(X,epochs(i+1,:), color), axis([0 30620 -60 100]);
    hold on
end   

