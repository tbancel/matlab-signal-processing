# Session 1 Discovering signal processing with Matlab

## FFT with Matlab

All the code is the `fft_square_signal.m` file located in the `Session 1 - Code files` folder.

We create a square signal (Fig. 1) and compute the spectrogram using 3 different methods:
- Fast Fourier Transform
- pwelch
- periodogram

We plot the three spectogram on Figures 2, 3 and 4.

## Chirp signal

All the code is the `chirpsignal.m` file

Figure 5: same as earlier with another function (we use the chirp function). We use the subplot function to plot 2 graphs on the same figure.


## Downsampling and aliasing

We see on Figure 6 that sampling at 20hz aliases the signal, ie. we loose most of the information contained into it. To prevent this problem, we low-pass filter the 200Hz sampled  signal with a Butterworth low-pass filter of order 1 with a relative cut-off frequency of 0.05 (line 27 to 30 of `chirpsignal.m`).

We see, on Figure 7, that the high frequencies of the chirp signal (after 0.6s) are highly attenuated in amplitude, therefore the aliasing does not loose much of the info.


## Fourier: phase versus magnitude

All the code is the `phase_magnitude.m` file. 

To understand the meaning of the instantaneous phase, let's write our signal : V(t) = A(t)*sin(phi(t)). Although there is an infinite number of solutions (A(t), phi(t)), we can normalize V(t) so that Vn(t) = V(t)/(max(V)) belongs to [-1,1] and therefore write Vn(t)=sin(phi(t)). phi(t) can be seen as the instantenous phase. The temporal derivative of phi is therefore the instantaneous pulsation omega(t).

We can see on Figure 8, that for the sinus and white gaussian noise, the pulsation is constant (the instantenous phase is a straight line) which makes sense. Whereas for the chirp signal, the pulsation increases with time, which is understable when we look at the chirp signal shape (the pulsation increase with time).

Finally, considering the band-passed filtered of the EEG recording, it makes sense that the instantenous phase is almost a line since it is derivative can't vary much (it varies between 8 and 12Hz)

## Windowing

Everything is in the `eeg_recording.m` file.

For the example, we choose to split the signal in 20 epochs of 1531 data points. To store the epochs in a clean way, we define a 20x1531 matrix, which we populate looping into the rows and columns.

For epoch selection, we define an arbitrary threshold value of 40 which eliminates all epochs whose any of its points goes beyond (in absolute value). We then define a epoch_label 1x20 matrix which stores the label of each epoch.

Finally, to plot the labeled epoch, we loop through the epoch matrix using the hold on function (Figure 11), and change the color depending on the label.

To window the EEG signal, I create another epoch matrix containing the windowed signal (called epochs_windowed) which is just the hadamar product of the signal of the epochs and the hammer window. We see that it attenuates the signal at the border of the epochs, which would consequently attenuate the very high frequencies (due to epoching), in the spectrogram. We would see that if we were to plot the spectograms of the windowed vs non-windowed epochs.


