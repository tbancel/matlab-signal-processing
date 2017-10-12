function handles = update_feature_ranking(handles, hObject)


% UPDATE NUMBER OF FEATURE
%Get maximum features number
if(isempty(handles.features_results) < 0.5)
    mmax = size(handles.features_results.o_features_matrix, 1);
else
    mmax = 1;
end
% get numeric value
nb_feature_str = get(handles.FR_edit_nb_feature, 'String');
% Conversion
[nb_feature, status] = str2num(nb_feature_str);
if(status == 1)
    rectified_value = min(max(round(nb_feature), 1), mmax);
    handles.init_parameter.nb_features = rectified_value;
    set(handles.FR_edit_nb_feature, 'String', rectified_value),
else
    set(handles.FR_edit_nb_feature, 'String', 'badformat');
end

% UPDATE probe probability
% get numeric value
nb_probe_str = get(handles.FR_edit_probability_probe, 'String');
% Conversion
[nb_probe, status] = str2num(nb_probe_str);
if(status == 1)
    rectified_value = max(min(nb_probe, 1), 0);
    handles.init_parameter.threshold_probe = rectified_value;
    set(handles.FR_edit_probability_probe, 'String', rectified_value),
else
    set(handles.FR_edit_probability_probe, 'String', 'badformat');
end


% UPDATE NOMBER FEATURES and probe variable choice
% get selected button
button_tag = char(get(handles.FR_bg_nb_feature.SelectedObject, 'Tag'));
% Assing method to init_parameter
if( strcmp(button_tag , 'FR_rb_nb_feature'))
    stop_criteria = '';
elseif(strcmp(button_tag , char('FR_rb_probe_variable')))
    % TO CHANGE ACCORDING TO TOOLBOX
    stop_criteria = '_probe';
end


% UPDATE RANKING METHOD
% get selected button
button_tag = char(get(handles.FR_bg_ranking_method.SelectedObject, 'Tag'));
if( strcmp(button_tag , 'FR_rb_GS'))
% Assing method to init_parameter
    ranking_method = 'gram_schmidt';
    %Enable probe variable
    set(handles.FR_rb_probe_variable, 'Enable', 'on')
    set(handles.FR_edit_probability_probe, 'Enable', 'on')
else
     ranking_method = handles.init_parameter.adv_ranking_method;
     stop_criteria = '';
     % disable probe variable because not compatible with advances methods
     set(handles.FR_rb_probe_variable, 'Enable', 'off')
    set(handles.FR_edit_probability_probe, 'Enable', 'off')
end

% update init_parameter
handles.init_parameter.ranking_method = [ ranking_method, stop_criteria ];

%Update ranking display
set(handles.FR_st_selected_adv_method, 'String', handles.init_parameter.adv_ranking_method )



% update button status
set_button_availability(handles, hObject)

guidata(hObject, handles);



end