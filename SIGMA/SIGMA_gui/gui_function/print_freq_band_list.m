function band_list = print_freq_band_list(numeric_band_list)


% Number of bands
nb_bands = size(numeric_band_list, 1);
% Name of bands
 band_name = {'Delta     : ', 'Theta     : ', 'Mu        : ', 'Alpha     : ', 'Beta      : ', 'Gamma     : ', 'Gamma_high: ', 'All bands : '};

 % creat a string for all band names using the values provided
band_list = cell(nb_bands, 1);
for cB = 1:nb_bands
    
    band_list{cB} = [ band_name{cB}, '[ ', num2str(numeric_band_list(cB, 1)), ' ', num2str(numeric_band_list(cB, 2)), ' ] Hz' ];
    disp(band_list{cB})
 
end


end