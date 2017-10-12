function init_method=Sigma_method_initialisation(init_parameter)

%%   Scripts task:
%   This scipt initializes the BCI toolbox parameters
%   User can add/modify the data in this file
%   This file contains the description of the parametres which are used in
%   the script "Compute_feature"

% The features axtractions' methodes are listed following this order:
%% LISTE OF METHODS









% Methode 100 : random_noise_features_1
% Methode 200 : random_noise_features_2

%% SECTION 1 ==> Method 1 : power_spectrum ==> Compute the Fourrier Power in the frequency bands defined by the user 
%global init_method;
init_method(1).method_name='spect_fourier_power';
init_method(1).method_out='o_fourier_power';
init_method(1).method_number=1;
init_method(1).fc_method_name='Spectral_fourier_power';
% 
% 
% init_method(1).band_start=[1 4 8 12 20 30 55]; % left frequency point (left limit band)
% init_method(1).band_end=[4 8 12 20 30 45 90]; % right frequency point (right limit band)
% % % 
% init_method(1).band_start=[1 4 8 12 20 30 55 105 155 205]; % left frequency point (left limit band)
% init_method(1).band_end=[4 8 12 20 30 45 95 145 195 245]; % right frequency point (right limit band)
% % 
init_method(1).band_start=init_parameter.selected_freq_bands(:,1); % left frequency point (left limit band)
init_method(1).band_end=init_parameter.selected_freq_bands(:,2); % right frequency point (right limit band)

init_method(1).nb_of_bands=length(init_method(1).band_end);
init_method(1).frequency_step = 1; % step of the power integration for the frequency
init_method(1).relative= 1;% 1 for yes and 0 for no to compute the relative power
init_method(1).all_fourier_power= 1;% 1 for yes and 0 for no, iclude all power as a features
init_method(1).pwelch_width = 2; % the width of the widows will be defined by : c_window=sampling_rate/pwelch_width


%% SECTION 2 ==> Method 2 : Fractal dimension ==> Compute the fractale dimension for each EEG channel
init_method(2).method_name='time_fractal_katz';
init_method(2).method_out='o_time_fractal_katz';
init_method(2).method_number=2;
init_method(2).fc_method_name='Time_fd_katz';


%% SECTION 3 ==>Method 3 : Sample Entropy
init_method(3).method_name='time_sample_entropy';
init_method(3).method_out='o_time_sample_entropy';
init_method(3).fc_method_name='Time_sample_entropy';

init_method(3).method_number=3;
init_method(3).dimension=3; % embedded dimension
init_method(3).tau=6; % tau : delay time for downsampling (user can omit this, in which case the default value is 1)
init_method(3).tolerance = 0.2; %  tolerance (typically 0.2 * std)
%% SECTION 4 ==> Method 4 : mean value 

init_method(4).method_name='time_mean';
init_method(4).method_out='o_time_mean';
init_method(4).fc_method_name='Time_mean';
init_method(4).method_number=4;

%% SECTION 5 ==> Method 5 : energy time domain
init_method(5).method_name='time_energy';
init_method(5).method_out='o_time_energy';
init_method(5).fc_method_name='Time_energy';
init_method(5).method_number=5;


%% SECTION 6 ==> Method 6 : Kurtisis
init_method(6).method_name='time_kurtosis';
init_method(6).method_out='o_time_kurtosis';
init_method(6).fc_method_name='Time_kurtosis';
init_method(6).method_number=6;

%% SECTION 7 ==> Method 7 : Skewness
init_method(7).method_name='time_skewness';
init_method(7).method_out='o_time_skewness';
init_method(7).fc_method_name='Time_skewness';

init_method(7).method_number=7;

%% SECTION 8 ==> Method 8 : minmax : compteur de faible pente
init_method(8).method_name='time_low_slope';
init_method(8).method_out='o_time_low_slope';
init_method(8).fc_method_name='Time_low_slope';
init_method(8).method_number=8;
init_method(8).epsilon=0.1; % refers to the page 15 to the report of Fong NGO

%% SECTION 9 ==> Method 9 : slop signe change !!
init_method(9).method_name='time_slope_change';
init_method(9).method_out='o_time_slope_change';
init_method(9).fc_method_name='Time_slope_change';
init_method(9).method_number=9;

%% SECTION 10 ==> Method 10 : Wave length
init_method(10).method_name='time_wavelength';
init_method(10).method_out='o_time_wavelength';
init_method(10).fc_method_name='Time_wavelength';
init_method(10).method_number=10;

%% SECTION 11 ==> Method 11 : MASV
init_method(11).method_name='time_msav';
init_method(11).method_out='o_time_msav';
init_method(11).fc_method_name='Time_msav';
init_method(11).method_number=11;


%% Hilbert Transform & Enveloppe features 
%% SECTION 12 ==> Method 12 :  mean  enveleoppe
init_method(12).method_name='time_enveloppe_mean';
init_method(12).method_out='o_time_enveloppe_mean';
init_method(12).fc_method_name='Time_enveloppe_mean';
init_method(12).method_number=12;

%% SECTION 13 ==> Method 13 :  standard devatiation enveleoppe
init_method(13).method_name='time_enveloppe_std';
init_method(13).fc_method_name='Time_enveloppe_std';
init_method(13).method_out='o_time_enveloppe_std';
init_method(13).method_number=13;


%% SECTION 14 ==> Method 14 :  kurtosis devatiation enveleoppe
init_method(14).method_name='time_enveloppe_kurtosis';
init_method(14).fc_method_name='Time_enveloppe_kurtosis';
init_method(14).method_out='o_time_enveloppe_kurtosis';
init_method(14).method_number=14;

%% SECTION 15 ==> Method 15 :  variance enveleoppe
init_method(15).method_name='time_enveloppe_var';
init_method(15).fc_method_name='Time_enveloppe_var';
init_method(15).method_out='o_time_enveloppe_var';
init_method(15).method_number=15;

%% SECTION 16 ==> Method 16 :  skewness devatiation enveleoppe
init_method(16).method_name='time_enveloppe_skewness';
init_method(16).fc_method_name='Time_enveloppe_skewness';
init_method(16).method_out='o_time_enveloppe_skewness';
init_method(16).method_number=16;



%% SECTION 17 ==> Method 17 : Zero Crossing
init_method(17).method_name='time_zero_crossing';
init_method(17).method_out='o_time_zero_crossing';
init_method(17).fc_method_name='Time_zero_crossing';
init_method(17).method_number=17;

%% SECTION 18 ==> Method 18 : slope_signe_change_cpt
init_method(18).method_name='time_slope_signe_change';
init_method(18).method_out='o_time_slope_signe_change';
init_method(18).fc_method_name='Time_slope_signe_change';
init_method(18).method_number=18;

%% SECTION 19 ==> Method 19 : entropy time domaine
init_method(19).method_name='time_gonzalez_entropy';
init_method(19).method_out='o_time_gonzalez_entropy';
init_method(19).fc_method_name='Time_gonzalez_entropy';
init_method(19).method_number=19;

%% SECTION 20 ==> Method 20 : 
init_method(20).method_name='time_variance';
init_method(20).method_out='o_time_variance';
init_method(20).fc_method_name='Time_variance';
init_method(20).method_number=20;


%% SECTION 21 ==> Method 21 : fractal_dimension 
init_method(21).method_name='time_fractal_higuchi';
init_method(21).method_out='o_time_fractal_higuchi';
init_method(21).fc_method_name='Time_fd_higuchi';
init_method(21).method_number=21;

%% SECTION 22 ==> Method 22 : fractal_dimension () pblem d execution faut verifier le code
init_method(22).method_name='time_fractal_haussdorf';
init_method(22).method_out='o_time_fractal_haussdorf';
init_method(22).fc_method_name='Time_fd_haussdorf';
init_method(22).method_number=22;


%% SECTION 23 ==> Method 23 : mean_time_between_oscillation
init_method(23).method_name='time_mean_time_bo';
init_method(23).method_out='o_time_mean_time_bo';
init_method(23).fc_method_name='Time_mean_time_bo';
init_method(23).method_number=15;

%% SECTION 24 ==> Method 24 : mean_apmlitude_between_oscillation
init_method(24).method_name='time_mean_amplitude_bo';
init_method(24).method_out='o_time_mean_amplitude_bo';
init_method(24).fc_method_name='Time_mean_amplitude_bo';
init_method(24).method_number=24;




%% THE METHODS FROM 25 to 35 are reserved for the wavelet transform's methods
%% SECTION 25 ==> Method 25 : wavelet transform
if init_parameter.wavelet_transform==1
    init_method(25).method_name='wavelet_transform';
    init_method(25).method_out='o_wavelet_transform';
    init_method(10).fc_method_name='Time_wavelength';
    init_method(25).method_number=25;
    init_method(25).wavelet_type=init_parameter.wavelet_transform_param.wavelet_type ;% Cwt = 'cmor2.0558-0.5874'; Best Value that françois get for EEG signal

    %init_method(25).minimal_frequency= min(init_parameter.selectd_freq_bands(:,1));% Min = minimal frequency
    init_method(25).minimal_frequency= init_parameter.wavelet_transform_param.minimal_frequency;% Min = minimal frequency

    %init_method(25).maximal_frequency= max(init_parameter.selectd_freq_bands(:,1));% Max = maximal frequency
    init_method(25).maximal_frequency= init_parameter.wavelet_transform_param.maximal_frequency;% Max = maximal frequency

    init_method(25).sampling_rate= init_parameter.sampling_rate ; %FreqEch = sampling rate =====> This value will be getted from the data
    init_method(25).step_frequency=init_parameter.wavelet_transform_param.step_frequency;% frqsmp = step in frequencies between Min and Max (use 1 for linear spacing as a recommandation of françois)  

    init_method(25).wt_method_list=[26:35]; % list of the reserved methods for the wavelet transform, if you add more methods you should specify it in this line 
end
%% SECTION 26 ==> Method 26 : wavelet kurtosis
init_method(26).method_name='wt_kurtosis';
init_method(26).method_out='o_wt_kurtosis';
init_method(26).fc_method_name='Time_wavelength';
init_method(26).method_number=26;


%% SECTION 27 ==> Method 27 :  wavelet standard deviations
init_method(27).method_name='wt_std';
init_method(27).method_out='o_wt_std';
init_method(27).fc_method_name='Time_wavelength';
init_method(27).method_number=27;


% methods will be added by François (bosses, ....)




%% THE METHODS FROM 36 to 50 are reserved for the fourrier transform methods

%% SECTION 36 ==> Method 36 : mean of norm fft
init_method(36).method_name='spect_amp_mean';
init_method(36).method_out='o_spect_amp_mean';
init_method(36).fc_method_name='Spectral_Amp_mean';
init_method(36).method_number=36;

%% SECTION 37 ==> Method 37 : std_deviation_fft
init_method(37).method_name='spect_amp_std';
init_method(37).method_out='o_spect_amp_std';
init_method(37).fc_method_name='Spectral_Amp_std';
init_method(37).method_number=37;
%% SECTION 38 ==> Method 38 : variance spect
init_method(38).method_name='spect_amp_var';
init_method(38).method_out='o_spect_amp_var';
init_method(38).fc_method_name='Spectral_Amp_var';
init_method(38).method_number=38;

%% SECTION 39 ==> Method 39 : Spectral flatnaess ( Wiener entropy)
init_method(39).method_name='spect_flatness';
init_method(39).method_out='o_spectral_flatness';
init_method(39).fc_method_name='Spectral_flatness_Wiener';
init_method(39).method_number=39;


% new methods will be added here


%% THE METHODS FROM 51 to 70 are reserved for the synchronisation methods

%% SECTION 51 ==> Method 51 : RDM % mesure de topographie
init_method(51).method_name='synchro_time_rdm';
init_method(51).method_out='o_synchro_time_rdm';
init_method(51).fc_method_name='Synchro_Time_rdm';
init_method(51).method_number=51;

%% SECTION 52 ==> Method 52 : MAG 
init_method(52).method_name='synchro_time_mag';
init_method(52).method_out='o_synchro_time_mag';
init_method(52).fc_method_name='Synchro_Time_mag';
init_method(52).method_number=52;

%% SECTION 53 ==> Method 53 : Mean Difference between the amplitudes
init_method(53).method_name='synchro_time_diff';
init_method(53).method_out='o_synchro_time_diff';
init_method(53).fc_method_name='Synchro_Time_diff';
init_method(53).method_number=53;

%% SECTION 54 ==> Method 54 : EMAX voir thèse T MEDANI
init_method(54).method_name='synchro_time_emax';
init_method(54).method_out='o_synchro_time_emax';
init_method(54).fc_method_name='Synchro_Time_emax';
init_method(54).method_number=54;


%% SECTION 55 ==> Method 55 : Correlation voir thèse T MEDANI
init_method(55).method_name='synchro_time_corr';
init_method(55).method_out='o_synchro_time_corr';
init_method(55).fc_method_name='Synchro_Time_corr';
init_method(55).method_number=55;


%% SECTION 56 ==> Method 56 : corr type spermann
init_method(56).method_name='synchro_time_corr_spearman';
init_method(56).method_out='o_synchro_time_corr_spearman';
init_method(56).fc_method_name='Synchro_Time_corr_spearman';
init_method(56).method_number=56;



%% SECTION 57 ==> Method 57 : corr  kendall
init_method(57).method_name='synchro_time_corr_kendall';
init_method(57).method_out='o_synchro_time_corr_kendall';
init_method(57).fc_method_name='Synchro_Time_corr_kendall';
init_method(57).method_number=57;


%% SECTION 58 ==> Method 58 : cross correlation valeur moyenne
init_method(58).method_name='synchro_time_cross_corr';
init_method(58).method_out='o_synchro_time_cross_corr';
init_method(58).fc_method_name='Synchro_Time_cross_corr';
init_method(58).method_number=58;





%% SECTION 60 ==> Method 60 : Synchro_phase_locking_value
init_method(60).method_name='synchro_phase_locking';
init_method(60).method_out='o_synchro_phase_locking';
init_method(60).fc_method_name='Synchro_phase_locking_value';
init_method(60).method_number=60;


%% SECTION 61 ==> Method 61 : Synchro_phase_index_value
init_method(61).method_name='synchro_phase_index';
init_method(61).method_out='o_synchro_phase_index';
init_method(61).fc_method_name='Synchro_phase_index_value';
init_method(61).method_number=61;


%% SECTION 62 ==> Method 62 : Synchro_phase_index_value
init_method(62).method_name='Synchro_amp_max_coh';
init_method(62).method_out='o_synchro_amp_max_coh';
init_method(62).fc_method_name='Synchro_amp_max_coh';
init_method(62).method_number=62;


%% SECTION 63 ==> Method 63 : Synchro_phase_index_value
init_method(63).method_name='Synchro_amp_max_freq_coh';
init_method(63).method_out='o_synchro_amp_max_freq_coh';
init_method(63).fc_method_name='Synchro_amp_max_freq_coh_value';
init_method(63).method_number=63;


%% SECTION 64 ==> Method 64 : Synchro_phase_index_value
init_method(64).method_name='Synchro_amp_max_coh';
init_method(64).method_out='o_synchro_amp_max_coh';
init_method(64).fc_method_name='Synchro_amp_max_coh_value';
init_method(64).method_number=64;



% 
% %% SECTION 62 ==> Method 62 : Synchro_phase_index_value
% init_method(61).method_name='synchro_phase_index';
% init_method(61).method_out='o_synchro_phase_index';
% init_method(61).fc_method_name='Synchro_phase_index_value';
% init_method(61).method_number=61;
% 
% 
% 
% 
% 
% 
% %% SECTION 62 ==> Method 62 : Synchro_phase_index_value
% init_method(61).method_name='synchro_phase_index';
% init_method(61).method_out='o_synchro_phase_index';
% init_method(61).fc_method_name='Synchro_phase_index_value';
% init_method(61).method_number=61;









%% drafts....

% 
% 
% %% SECTION 39 ==> Method 22 : std_deviation_fft
% init_method(22).method_name='std_deviation_value';
% init_method(22).method_out='o_std_deviation_value';
% init_method(10).fc_method_name='Time_wavelength';
% 
% init_method(22).method_number=22;
% 
% 
% 
% %% SECTION 12 ==> Method 12 : Enveloppe du signale, Transformé de Hilbert, mean_norm_enveloppe
% init_method(12).method_name='mean_norm_enveloppe';
% init_method(12).method_out='o_mean_norm_enveloppe_value';
% init_method(12).fc_method_name='Time_wavelength';
% 
% init_method(12).method_number=12;


% 
% %% SECTION 36 ==> Method 36 :  mean  enveleoppe
% init_method(36).method_name='time_enveloppe_mean';
% init_method(36).method_out='o_time_enveloppe_mean';
% init_method(36).fc_method_name='Time_enveloppe_mean';
% init_method(36).method_number=36;
% 
% %% SECTION 37 ==> Method 37 :  standard devatiation enveleoppe
% init_method(37).method_name='time_enveloppe_std';
% init_method(37).fc_method_name='Time_enveloppe_std';
% init_method(37).method_out='o_time_enveloppe_std';
% init_method(37).method_number=37;
% 
% 
% %% SECTION 38 ==> Method 38 :  kurtosis devatiation enveleoppe
% init_method(38).method_name='time_enveloppe_kurtosis';
% init_method(38).fc_method_name='Time_enveloppe_kurtosis';
% init_method(38).method_out='o_time_enveloppe_kurtosis';
% init_method(38).method_number=38;
% 
% 
% 
% %% SECTION 39 ==> Method 39 :  variance enveleoppe
% init_method(39).method_name='time_enveloppe_var';
% init_method(39).fc_method_name='Time_enveloppe_var';
% init_method(39).method_out='o_time_enveloppe_var';
% init_method(39).method_number=39;
% 
% %% SECTION 40 ==> Method 40 :  skewness devatiation enveleoppe
% init_method(40).method_name='time_enveloppe_skewness';
% init_method(40).fc_method_name='Time_enveloppe_skewness';
% init_method(40).method_out='o_time_enveloppe_skewness';
% init_method(40).method_number=40;



%% SECTION 41 ==> Method 41 :  41 to 50 are reserved to the Range EEG rEEG described in this paper : Peak-to-peak amplitude in neonatal brain monitoring of premature infants
% Se referer aux script range_EGG




%% SECTION 100 ==> Method 100 : random_noise_features_1
init_method(100).method_name='random_noise_features_1';
init_method(100).method_out='o_random_noise_features_1';
init_method(100).method_number=100;

%% SECTION 200 ==> Method 200 : random_noise_features_2
init_method(101).method_name='random_noise_features_2';
init_method(101).method_out='o_random_noise_features_2';
init_method(101).method_number=101;
end

%%
% % %----------------------------------------------------------------------
% % %                  Brain Computer Interface team
% % % 
% % %                            _---~~(~~-_.
% % %                          _{        )   )
% % %                        ,   ) -~~- ( ,-' )_
% % %                       (  `-,_..`., )-- '_,)
% % %                      ( ` _)  (  -~( -_ `,  }
% % %                      (_-  _  ~_-~~~~`,  ,' )
% % %                        `~ -^(    __;-,((()))
% % %                              ~~~~ {_ -_(())
% % %                                     `\  }
% % %                                       { }
% % %   File created by Takfarinas MEDANI
% % %   Creation Date : 21/10/2016
% % %   Updates and contributors :
% % %
% % %   Citation: [creator and contributor names], comprehensive BCI
% % %             toolbox, available online 2016.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2016
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------
