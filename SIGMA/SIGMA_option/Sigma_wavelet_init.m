function init_parameter=Sigma_wavelet_init(init_parameter,fmin,fmax,step)
% This function is used by the function 'Sigma_frequency_initialisation
% It includ on the structure init_parameter the information related to 
% the choice of the user regarding the  frequency bands to study

%% 2: Definition of the LowPass filter default value

  % This is part of the code of François : [ascwt, s] = wavelet_trans(Signal,Cwt, Min, Max, FreqEch, frqsmp)
    % This function calls the matlab wavelet toolbox to transform signals into 
    % wavelets. If you do not have wavelet toolbox, you must change calls to 
    % ctrfrq and cwt and call a free toolbox such as Yawtb, or wait for the
    % next release of SUMO toolbox where complex Morlet will be implemented
    %
    % Signal = signal to be transformed
    % Cwt = wavelet type
    %     'haar' : Haar, 'meyr' : Meyer, 'mexh' : Mexican hat, 'morl' : Morlet
    % Min = minimal frequency
    % Max = maximal frequency
    % FreqEch = sampling rate
    % frqsmp = step in frequencies between Min and Max 
    %          (use 1 for linear spacing)
    %
    % output: ascwt = wavelet transform, s = transform scales
    %
    % Copyright (C) 2008 Lab. ABSP, Riken (Japan) Francois-B. Vialatte et al.
    % Please cite related papers when publishing results obtained with this
    % toolbox

    %%% Cwt = 'cmor2.0558-0.5874';
    
    
     wavelet_type='cmor2.0558-0.5874';
     minimal_frequency=fmin;
     maximal_frequency=fmax;
     step=1;
     step_frequency=step; % or scale
    
    % For the Wavellet transform
    init_parameter.wavelet_transform_param.wavelet_type=wavelet_type;
    init_parameter.wavelet_transform_param.minimal_frequency=minimal_frequency;
    init_parameter.wavelet_transform_param.maximal_frequency=maximal_frequency;
    init_parameter.wavelet_transform_param.step_frequency=step_frequency;

end