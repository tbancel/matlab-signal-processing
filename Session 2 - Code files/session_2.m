%% session2

% go to Sigma > Sigma_gui > gui_faure_v1
% 
% to debug the GUI, type "guide" in the console and select the gau_aure_v1.fig 
% from the SIGMA_gui/ to modify some options (resizable window, etc.)

% On MAC, in the data loading section, the "browse" button was not working,
% to fix it, get the callback function in the GUI guide, and modify for function in 
% gui_aure_v1.m file.

% on line 249, here is what you should put:

% if ispc
%  handles.init_parameter.data_location = [ FilePath, '\' ];
% end
% if ismac
%  handles.init_parameter.data_location = [ FilePath, '/' ];
% end

%%

% EXPERIMENT :

% We work on subject 1, there are 14 recordings, on 16 channels, each
% recording has 20 000 points. Each recording corresponds to a state (+1 or
% -1):
% > +1 = the subject is concentrated
% > -1 = the subject is NOT concentrated


% thanks to the GUI (launched by executing gui_aure_v1.m + some debugging !!),
% we extract the features, sort them and reduce their number.

% Here are some examples of what the GUI logs in the console, while
% performing the feature extraction
% Here 1 subject, 4 bands, 14 epochs, 16 channels for each epoch.

% =======================    Matrix feature assembly     =======================
% =======================   Informations    ==================
% The features matrix has the right dimension
% The dimension of the feature matrix is : 192   14
% The list of subject is : 1
% The number of subject is : 1
% The number of epochs of each subject is : 14
% The total number of epochs is : 14
% The list of the used method(s) is : 4  5  6
% The total number of method(s) is : 3
% The filters vector is  : 1  1  1
% The filters are applied for the methods : 4  5  6
% The total number of appliyed filter is : 3
% The selected band(s)\n :
%       Delta     : [0.1 4] Hz
%       Theta     : [4 8] Hz
%       Mu        : [8 12] Hz
%       Beta      : [16 32] Hz
%  
% The total number of bands is : 4
% The total number of channels is : 16
% The total number of features is : 192
% The used methods for features are: 
%   	      time_mean
%   	      time_energy
%   	      time_kurtosis
%   	      
% =======================   End of Matrix feature assembly    ==================
%                     o_time_mean: [64×14 double]
%                o_time_mean_band: [64×3 double]
%                   o_time_energy: [64×14 double]
%              o_time_energy_band: [64×3 double]
%                 o_time_kurtosis: [64×14 double]
%            o_time_kurtosis_band: [64×3 double]
%                   origin_labels: [1 1 2 2 1 1 1 1 2 2 1 2 1 2]
%                          labels: [-1 -1 1 1 -1 -1 -1 -1 1 1 -1 1 -1 1]
%                          epochs: 14
%                       nb_epochs: 14
%                   sampling_rate: 2000
%                     nb_channels: 16
%                   subject_epoch: [14×2 double]
%                     used_method: {3×1 cell}
%               method_band_infos: {'N° Method'  'N° Channel'  'N° band'}
%      remove_individual_features: 'N'
%                  channel_method: [192×2 double]
%               o_features_matrix: [192×14 double]
%            o_features_matrix_id: [192×3 double]
%      o_features_matrix_id_infos: {' N° Method  N°Channel   N°Band '}
%      o_features_matrix_original: [192×14 double]
%     o_features_matrix_normalize: [192×14 double]
%                     nb_features: 192
%                        nb_epoch: 14

% Here is what is logged when ranking the features 


% ********************** Start of OFR Ranking Algorithm *********************************
% You have selected the gram_schmidt method for the ranking
% The feature matrix has the dimension of : 192   14
% You have selected  "All the feature matrix" for the ranaking ...
% SIGMA>> You have selected the "gram_schmidt"  method
% The feature 67 is ranked 1 and comes from method N°:5 (time_energy); channel N°: 1 (Fp1); band N°: 3(Mu        : [8 12] Hz)
% The feature 30 is ranked 2 and comes from method N°:4 (time_mean); channel N°: 8 (Cz); band N°: 2(Theta     : [4 8] Hz)
% The feature 34 is ranked 3 and comes from method N°:4 (time_mean); channel N°: 9 (CP5); band N°: 2(Theta     : [4 8] Hz)
% The feature 117 is ranked 4 and comes from method N°:5 (time_energy); channel N°: 14 (O1); band N°: 1(Delta     : [0.1 4] Hz)
% The feature 190 is ranked 5 and comes from method N°:6 (time_kurtosis); channel N°: 16 (O2); band N°: 2(Theta     : [4 8] Hz)
% The feature 178 is ranked 6 and comes from method N°:6 (time_kurtosis); channel N°: 13 (P4); band N°: 2(Theta     : [4 8] Hz)
% The feature 11 is ranked 7 and comes from method N°:4 (time_mean); channel N°: 3 (F7); band N°: 3(Mu        : [8 12] Hz)
% The feature 164 is ranked 8 and comes from method N°:6 (time_kurtosis); channel N°: 9 (CP5); band N°: 5(Beta      : [16 32] Hz)
% The feature 186 is ranked 9 and comes from method N°:6 (time_kurtosis); channel N°: 15 (Oz); band N°: 2(Theta     : [4 8] Hz)
% The feature 13 is ranked 10 and comes from method N°:4 (time_mean); channel N°: 4 (F3); band N°: 1(Delta     : [0.1 4] Hz)
% The feature 61 is ranked 11 and comes from method N°:4 (time_mean); channel N°: 16 (O2); band N°: 1(Delta     : [0.1 4] Hz)
% The feature 171 is ranked 12 and comes from method N°:6 (time_kurtosis); channel N°: 11 (P3); band N°: 3(Mu        : [8 12] Hz)
% The feature 66 is ranked 13 and comes from method N°:5 (time_energy); channel N°: 1 (Fp1); band N°: 2(Theta     : [4 8] Hz)
% The feature 121 is ranked 14 and comes from method N°:5 (time_energy); channel N°: 15 (Oz); band N°: 1(Delta     : [0.1 4] Hz)
% The feature 3 is ranked 15 and comes from method N°:4 (time_mean); channel N°: 1 (Fp1); band N°: 3(Mu        : [8 12] Hz)
% ********************** End of OFR Ranking Function *********************************
% 
% ********************** Start of OFR Ranking Algorithm *********************************
% You have selected the gram_schmidt_probe method for the ranking
% The feature matrix has the dimension of : 192   14
% You have selected  "All the feature matrix" for the ranaking ...
% SIGMA>> You have selected the "gram_schmidt_probe"  method
% The feature 67 is ranked 1 and comes from method N°:5 (time_energy); channel N°: 1 (Fp1); band N°: 3(Mu        : [8 12] Hz)
% The feature 30 is ranked 2 and comes from method N°:4 (time_mean); channel N°: 8 (Cz); band N°: 2(Theta     : [4 8] Hz)
% ********************** End of OFR Ranking Function *********************************
