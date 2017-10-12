%% TP BME
% Initialisation of the parameters used by SigmaBox
sigma_tp_initialisation

% selection of the subject to display
% subject 1 : cleaned data
% subject 2 :raw data
init_parameter.subject=[1,2];


%these line is calling the data visualization GUI.
Sigma_visualisating_data(init_parameter);
% 
% Your task is to cut the data of the subject into small epochs and try to
% identify the bad epochs to reject and the good epoch to keep 