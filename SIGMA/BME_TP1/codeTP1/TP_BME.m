%% FFT with Matlab
fs = 10000;% sampling rate
t=0:1/fs:1.5;
y=square(2*pi*50*t);
% y=sin(2*pi*50*t);
figure;
plot(t,y);
axis([0 0.2 -1.2 1.2]);
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Square Periodique Wave')

%% Compte th FFT to observe the frequency content of the signal
NFFT=length(y);% number of the time points
Y=fft(y,NFFT); % help fft for more informations
F=((0:1/NFFT:1-1/NFFT)*fs);% 1/NFFT is the frequency resolution
% La fft fait donc une projection sur une base de cos, avec une amplitude complexe. 
% La partie réelle représente la composante purement cos, la partie imaginaire représente
% la composante sinus. Ou bien, cela revient au même, le module du complexe représente l'amplitude du cos, 
% et l'argument la phase. Les deux fonctions matlab pour extraire amplitude et phase sont donc abs() et angle().
%% The magnitude of the spectre
magnitudeY=abs(Y); % Magnitude of the FFT
dBmagnitude=20*log10(magnitudeY);
figure;
plot(F,dBmagnitude);

plot(F(1:length(F)/2),dBmagnitude(1:length(F)/2));
% PBLM : the result is in two sides ... chexh FFT for the correction

%Check the results of the pwelch, fft and periodogram function
 % Pwelch
pwelch(y,[],[],1:300,1000)
periodogram(y,[],1:300,1000)
pwelch(y,[],[],1:300,1000)
periodogram(y,[],1:300,1000)

%% Chirp signal page 14
Fs=200; % sampling frequency
t=0:1/Fs:1;
x=chirp(t,0,1,Fs/6);
% fft
NFFT=length(x);% number of the time points
X=fft(x,NFFT); % help fft for more informations
F=((0:1/NFFT:1-1/NFFT)*fs);% 1/NFFT is the frequency resolution
magnitudeX=abs(X); % Magnitude of the FFT
dBmagnitude=20*log10(magnitudeX);
figure;
subplot(2,2,1)
plot(t,x)
subplot(2,2,2)
stem(t,x)
subplot(2,2,[3 4])
plot(F,dBmagnitude);

% PBLM with the fft plot, repétition du spectr à haut frequence, same as
% previous

%% Downsampling and aliasing Page 15
%downsample the chirp to 20Hz by taking one point every 20 samples 
dx=x(1:20:end);
dt=t(1:20:end);
figure;
plot(t,x,'b');
hold on;
plot(dt,dx,'r');
legend('Original signal','downsampled signal')
% /!\ the result is not as desired, loos of the data, the commande
%en traitement du signal. Il désigne une situation où un signal indésirable dérivé de celui 
% qu'on a transmis apparaît mélangé à celui-ci.
% Le crénelage ou effet d'escalier est un effet visuel caractérisé par des motifs en forme d’escalier
% sur les contours obliques des objets. Il se rencontre en infographie, télévision, impression matricielle, 
% image tramée en imprimerie, point de croix, et généralement dans toutes les formes de visualisation composées 
% de figures de couleur uniforme régulièrement espacées quand cet espacement est suffisamment grand pour que 
% l'élément de base soit visible et que le contour n'est pas parallèle à l'alignement des points. Il est d'autant
% plus visible que le contraste est élevé.
% L’anglicisme aliasing désigne, outre l'effet d'escalier, toutes les formes de repliement de spectre, notamment ceux liés à l'échantillonnage du signal.



%% Filter the signal, with the lowpass filter
N=1; % order of the filter
Wn=30/(2*Fs);% the normalized cut off frequency
[b,a] = butter(N,Wn,'low'); % designs a lowpass filter.
xf = filtfilt(b,a,x);                    % zero-phase filtering  conventional filtering
figure;
plot(t,x,'b');
hold on;
plot(t,xf,'r');
legend('Original signal','filtred signal')

% Downsample the filted signal
%downsample the chirp to 20Hz by taking one point every 20 samples 
delta=20;
dxf=xf(1:delta:end);
dt=t(1:delta:end);

figure;
plot(t,xf,'b');
hold on;
plot(dt,dxf,'r');
legend('filtred signal','downsampled signal')

%% Phase vesus magnitude
% the output of the fft is a complexe vector

%% FFT with Matlab
fs = 1000;% sampling rate
t=0:1/fs:1.5;
%y=square(2*pi*50*t);
y=sin(2*pi*50*t);
plot(t,y);axis([0 0.2 -1.2 1.2]);
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Square Periodique Wave')

%% Compte th FFT to observe the frequency content of the signal
NFFT=length(y)/2;% number of the time points
Y=fft(y,NFFT); % help fft for more informations
F=((0:1/NFFT:1-1/NFFT)*fs);% 1/NFFT is the frequency resolution
% La fft fait donc une projection sur une base de cos, avec une amplitude complexe. 
% La partie réelle représente la composante purement cos, la partie imaginaire représente
% la composante sinus. Ou bien, cela revient au même, le module du complexe représente l'amplitude du cos, 
% et l'argument la phase. Les deux fonctions matlab pour extraire amplitude et phase sont donc abs() et angle().
%% The magnitude of the spectre
magnitudeY=abs(Y); % Magnitude of the FFT
dBmagnitude=20*log10(magnitudeY);
figure;
plot(F(1:200),dBmagnitude(1:200));
% PBLM : the result is in two sides ... chexh FFT for the correction

%% The pahse 
phaseY=angle(Y); % Magnitude of the FFT; en degré
phaseY1=phase(Y); % Magnitude of the FFT; en radians

phaseYunwrap=unwrap(phaseY)

figure;
subplot(2,2,1)
plot(F(1:200),dBmagnitude(1:200),'b');
subplot(2,2,2)
plot(F(1:200),phaseY(1:200),'r');
subplot(2,2,[3 4])
plot(t,y)


%% Comparaison between phases of the signals
fs = 1000;% sampling rate
t=0:1/fs:1.5;
%temporelle
sig_sinus=sin(2*pi*50*t);
sig_chirp=chirp(2*pi*50*t);
sig_squar=square(2*pi*50*t);
sig_sawth=sawtooth(2*pi*50*t);
% fft
NFFT=length(y)/2;% number of the time points
F=((0:1/NFFT:1-1/NFFT)*fs);% 1/NFFT is the frequency resolution
Sig_sinus=fft(sig_sinus,NFFT);
Sig_chirp=fft(sig_chirp,NFFT);
Sig_squar=fft(sig_squar,NFFT);
Sig_sawth=fft(sig_sawth,NFFT);
% phase 
pSig_sinus=angle(Sig_sinus);
pSig_chirp=angle(Sig_chirp);
pSig_squar=angle(Sig_squar);
pSig_sawth=angle(Sig_sawth);
% unwrapped phase
upSig_sinus=unwrap(pSig_sinus);
upSig_chirp=unwrap(pSig_chirp);
upSig_squar=unwrap(pSig_squar);
upSig_sawth=unwrap(pSig_sawth);

figure;
plot(upSig_sinus,'r');hold on;
plot(upSig_chirp,'b');hold on;
plot(upSig_squar,'k');hold on;
plot(upSig_sawth,'c');hold on;
legend('up sinus','up chirp','up square','up sawtooth')

% phase versus maghitude

figure;
plot(abs(Sig_sinus),upSig_sinus,'r');hold on;
plot(abs(Sig_chirp),upSig_chirp,'b');hold on;
plot(abs(Sig_squar),upSig_squar,'k');hold on;
plot(abs(Sig_sawth),upSig_sawth,'c');hold on;
legend('up sinus','up chirp','up square','up sawtooth')