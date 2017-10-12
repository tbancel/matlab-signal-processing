    clc
clear all
close all
%% Details
Ac = 5;                         % carrier amplitude
fc = 10000;                     % carrier frequency
Am = 1;                         % modulating signal amplitude
fm = 1000;                      % modulating signal frequency
Tc = 1 / fc;                    % carrier period
Ts = Tc / 100;                  % sample interval  
Pm = 1 / fm;                    % signal period  
t = 0 : Ts : 5*Pm;              % 5 cycles
Vm = Am*cos(2*pi*fm*t);         % message signal
Vc = Ac*sin(2*pi*fc*t);         % carrier signal
Vam = (Ac+Vm).*sin(2*pi*fc*t);  % amplitude modulated signal
VamWindowed=Vam.*hamming(length(t),'periodic');
%% Plot three signals
figure(1)
    subplot(411)
    plot(t,Vm);
    title('Message signal');
    xlabel('Time(s)');
    ylabel('Amplitude(V)');
    grid
    subplot(412)
    plot(t,Vc);
    title('Carrier singal');
    xlabel('Time(s)');
    ylabel('Amplitude(V)');
    grid
    subplot(413)
    plot(t,Vam);
    title('Amplitude Modulated Signal');
    xlabel('Time(s)');
    ylabel('Amplitude(V)');
    grid 
    subplot(414)
    plot(t,VamWindowed);
    title('Amplitude Modulated Signal Hadamar');
    xlabel('Time(s)');
    ylabel('Amplitude(V)');
    grid 

% %% Plot spectrum of AM signal
% L=10^24;                         % number of samples 
% k=0:L-1;  
% f=k./(L*Ts);                    % frequency in Hz
% Xam=(2/L)*abs(fft(Vam,L)); 
% figure(2)
%     plot(f, Xam)
%     title('Spectrum of modulated signal')
%     xlabel('Frequency(Hz)')
%     ylabel('Magnitude')
%     grid on
%% window function