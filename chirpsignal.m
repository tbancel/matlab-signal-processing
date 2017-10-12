delete(findall(0, 'Type', 'figure'));
clear;
close;
clc;

fs=200;

% Signal
t=0:1/5000:1
y=chirp(t,0,1,fs/6);

% Sampled signal
t_sample=0:1/fs:1;
y_sample=chirp(t_sample,0,1,fs/6);

% Down sampled signal
t_down=0:1/20:1;
y_down=chirp(t_down, 0,1,fs/6);

% filtered signal by a 10Hz low pass filer of order 2
[b, a] = butter(2, 0.1);

% FFT of sampled signal
NFFT=length(t_sample);
fft_weight=fft(y_sample, NFFT);
F = ((0:1/NFFT:1-1/NFFT)*fs);

figure

subplot(2,1,1);
plot(t, y);
hold on
plot(t_down, y_down);
xlabel('Time');
ylabel('Amplitude');

subplot(2,1,2)
plot(F, abs(fft_weight));
xlabel('Frequency(Hz)');
ylabel('Amplitude');