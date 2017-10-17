delete(findall(0, 'Type', 'figure')); clear; close; clc;
% Phase vs Magnitude:

% fs = 1kHz
fs = 1000;
x = 0:1/fs:1;

sinus_signal = sin(2*pi*x);
chirp_signal = chirp(x,0,1,100);
white_noise_signal = wgn(length(x), 1, 0);



figure
subplot(3,2,1);
plot(x, sinus_signal);
title('Sinus signal')
subplot(3,2,2);
plot(x, unwrap(phase(hilbert(sinus_signal))));
title('Instantaneous phase sinus signal')


subplot(3,2,3);
plot(x, chirp_signal);
title('Chirp signal')
subplot(3,2,4);
plot(x, unwrap(phase(hilbert(chirp_signal))));
title('Instantaneous phase chirp signal')

subplot(3,2,5);
plot(x, white_noise_signal);
title('White noise signal')
subplot(3,2,6);
plot(x, unwrap(phase(hilbert(white_noise_signal))));
title('Instantaneous phase white noise signal')

%%
load('artefact_1.mat');
data = s_EEG.data;
Fp1=data(1,:);
fs_data = 500; % sampled at 500Hz

fc_low = 8 % low cutoff freq 8Hz
fc_high = 12 % high cutoff freq 12Hz

t = 1/fs_data:1/fs_data:(length(Fp1)/fs_data);
[b,a] = butter(2, 2*[fc_low fc_high]/fs_data);
filtered_Fp1 = filtfilt(b,a, Fp1);

figure; hold on
subplot(3,1,1);
plot(t, Fp1), xlabel("Time(s)"), title("Fp1 signal");
subplot(3,1,2);
plot(t, filtered_Fp1), xlabel("Time(s)"), title("alpha-band filtered signal");
subplot(3,1,3);
plot(t, unwrap(angle(hilbert(filtered_Fp1)))), xlabel("Time(s)"), title("Phase shift alpha filtered signal"); 




