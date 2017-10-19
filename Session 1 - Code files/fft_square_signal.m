delete(findall(0, 'Type', 'figure'));
clear;
close;
clc;

fs= 10000; % 
t = 0:1/fs:1.5;
y = square(2*pi*50*t);
plot(t,y), axis([0 0.2 -1.2 1.2]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Square Periodic Wave');

NFFT = length(y); % nombre de points samples
F = ((0:1/NFFT:1-1/NFFT)*fs); % axe des frequences pour la FFT

% Fast Fourier Transform

FFTY =  fft(y, NFFT);
magnitudeFFTY = abs(FFTY);
dBmagnitudeFFTY = 20*log10(magnitudeFFTY);
plot(F, dBmagnitudeFFTY), axis([0 5000 -20 80]);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Fourier Transform of Square Wave');


% Pwelch transform
[amp_pwelch, w_pwelch] = pwelch(y);
pwelch_freq = w_pwelch/(2*pi)*fs;
db_amp_pwelch = 20*log(abs(amp_pwelch));
plot(pwelch_freq, db_amp_pwelch);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Pwelch spectrum calculation');


% Periodogram
[amp_periodogram, w_periodogram] = periodogram(y);
periodogram_freq = w_periodogram/(2*pi)*fs;
db_amp_periodogram = 20*log(abs(amp_periodogram));
plot(periodogram_freq, db_amp_periodogram);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Periodogram spectrum calculation');


