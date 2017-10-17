delete(findall(0, 'Type', 'figure'));
clear;
close;
clc;

fs=200; % we sample at 200Hz

% Signal
t_c=0:1/5000:1
y=chirp(t_c,0,1,fs/6);

% Sampled signal at 200Hz
% chirp : instantaneous frequency at 0s is 0Hz, instantaneous frequency at
% 1s is 33.3Hz
dt=1/fs
t_sample=0:dt:1;
y_sample=chirp(t_sample,0,1,fs/6); %chirp signal

% Down sampled signal
t_down=0:1/20:1; % we down sample at 20Hz
y_down=chirp(t_down, 0,1,fs/6);

% filtered signal by a 10Hz low pass filter of order 1
% b and a are the coefficients of the butter filter
% Wc = fc/fs = 10/200 = 0.05

[b, a] = butter(1, 0.05, 'low');
filtered_signal = filtfilt(b,a, y_sample);
t_downsampled_indexes = 1:10:length(t_sample);
downsampled_filtered_signal=filtered_signal(t_downsampled_indexes); 

% FFT of sampled signal
NFFT=length(t_sample);
fft_weight=fft(y_sample, NFFT);
F = ((0:1/NFFT:1-1/NFFT)*fs);

%%
figure

subplot(2,1,1); hold on
a1 = plot(t_c, y); M1 = "Analog signal";
a2 = plot(t_down, y_down); M2 = "Down-sampled signal (aliasing)";
xlabel('Time');
ylabel('Amplitude');
legend([a1,a2], [M1,M2]);

subplot(2,1,2); hold on
plot(F, abs(fft_weight));
xlabel('Frequency(Hz)');
ylabel('Amplitude');

%%

figure; hold on
b1 = plot(t_sample, filtered_signal); 
N1 = "low pass filtered signal";
b2 = plot(t_down, filtered_signal(t_downsampled_indexes))
N2 = "down-sampled filtered signal (no-aliasing)";
legend([b1,b2], [N1,N2]);
xlabel('Time(s)');
ylabel('Amplitude');
