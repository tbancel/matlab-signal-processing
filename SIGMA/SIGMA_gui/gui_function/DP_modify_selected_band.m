function selected_band = DP_modify_selected_band(selected_band, band_id, check_value)

% add or remove selected band "band_id" acording to button state "check value"

if( check_value == 1)
    selected_band = sort( unique( [ selected_band,  band_id  ])); % refers to the sigma_frequency_initialisation
else
    band_to_remove = find(selected_band == band_id);
    selected_band(band_to_remove) = [];
end
