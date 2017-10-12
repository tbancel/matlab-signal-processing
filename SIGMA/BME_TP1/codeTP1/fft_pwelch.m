 Fs = 10000; 
 t  = (0:1/Fs:1-1/Fs).'; 
 x  = sin(2*pi*t*200);
 Nx = length(x);
 % Window data
 w = hanning(Nx);
 xw = x.*w; % with windowing
 xw=x;      % without windowing *****
 
 % Calculate power
 nfft = Nx; 
 X = fft(xw,nfft);
 mx = abs(X).^2; 
 % Normalize by window power. Multiply by 2 (except DC & Nyquist) 
 % to calculate one-sided spectrum. Divide by Fs to calculate 
 % spectral  density.
 %mx = mx/(w'*w); % with windowing ******
 NumUniquePts = nfft/2+1; 
 mx = mx(1:NumUniquePts);
 mx(2:end-1) = mx(2:end-1)*2;
 Pxx1 = mx/Fs;
 Fx1 = (0:NumUniquePts-1)*Fs/nfft; 
 [Pxx2,Fx2] = pwelch(x,w,0,nfft,Fs);
 plot(Fx1,10*log10(Pxx1),Fx2,10*log10(Pxx2),'r:');
 legend('PSD via FFT','PSD via pwelch')