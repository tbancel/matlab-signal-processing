function band_id = DP_find_band_id(hObject)

switch get(hObject, 'tag')
    case 'DP_delta'
        band_id = 1;
    case 'DP_theta'
        band_id = 2;
    case 'DP_mu'
        band_id = 3;
    case 'DP_alpha'
        band_id = 4;
    case 'DP_beta'
        band_id = 5;
    case 'DP_gamma'
        band_id = 6;
    case 'DP_gamma_high'
        band_id = 7;
    case 'DP_all'
        band_id = 8;
end