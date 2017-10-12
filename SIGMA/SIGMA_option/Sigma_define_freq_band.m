function [freq_bands, bands_list, filter_order]=Sigma_define_freq_band()


%% 0- The frquency bounds (minimal and maximal)
fmin=0.1; % The minimum frequency for the EEG data
fmax=90; % The maximum frequency f the EEG data

%% default value for the frequency bands
Wn_delta=[fmin 4];     Wn_theta=[4 8];    Wn_mu=[8 12];    Wn_alpha=[12 16];    Wn_beta=[16 32];
Wn_gamma=[32 45];    Wn_gamma_high=[45 fmax];    Wn_all_bands=[fmin fmax];

% User can specify here the value of the desired bands 
    %     Wn_delta=[1 4];     Wn_theta=[4 8];    Wn_mu=[8 12];    Wn_alpha=[12 20];    Wn_beta=[20 30];
    %     Wn_gamma=[30 45];    Wn_gamma_high=[45 fmax];    Wn_all_bands=[fmin fmax];
% TODO : add an automatic way to choos the value of the frequency 

freq_bands=[Wn_delta;Wn_theta;Wn_mu;Wn_alpha;Wn_beta;Wn_gamma;Wn_gamma_high;Wn_all_bands];

% Ordre of the filters for extracting the differents bands  
filter_order=5;
bands_list=[
            {['Delta     : [' num2str(Wn_delta(1)) ' ' num2str(Wn_delta(2)) '] Hz']};
            {['Theta     : [' num2str(Wn_theta(1)) ' ' num2str(Wn_theta(2)) '] Hz']};
            {['Mu        : [' num2str(Wn_mu(1)) ' ' num2str(Wn_mu(2)) '] Hz']};
            {['Alpha     : [' num2str(Wn_alpha(1)) ' ' num2str(Wn_alpha(2)) '] Hz']};
            {['Beta      : [' num2str(Wn_beta(1)) ' ' num2str(Wn_beta(2)) '] Hz']};
            {['Gamma     : [' num2str(Wn_gamma(1)) ' ' num2str(Wn_gamma(2)) '] Hz']};
            {['Gamma_high: [' num2str(Wn_gamma_high(1)) ' ' num2str(Wn_gamma_high(2)) '] Hz']};
            {['All bands : [' num2str(Wn_all_bands(1)) ' ' num2str(Wn_all_bands(2)) '] Hz']};];
        
end
