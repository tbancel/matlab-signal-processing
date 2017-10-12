% Run the "parameters_initialisation" to initialise all the user inputs
% clear all;close all;clc
%% 000- Add ISGMA box to the path

Sigma_install
%cd BME_TP1 
%% 0- Parameters initialisation
init_parameter=Sigma_parameter_initialisation();

%% frequency initialisation
% define the frequency of the differents bands
init_parameter = Sigma_frequency_initialisation(init_parameter);

%% compute the parameters of the filters
init_parameter=Sigma_filter_parameter(init_parameter);

%% method initialisation
% define a get the parameters of the methods
init_method=Sigma_method_initialisation(init_parameter);
cd ..
% 
% %these line is calling the data visualization GUI.
% Sigma_visualisating_data(init_parameter);