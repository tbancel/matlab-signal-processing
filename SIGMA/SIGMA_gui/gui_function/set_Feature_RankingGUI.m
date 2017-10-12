function handles = set_Feature_RankingGUI(handles, hObject)




%Set nb feature
nb_feature = handles.init_parameter.nb_features;
set(handles.FR_edit_nb_feature, 'String', num2str(nb_feature));

% set probe probability
probe_threshold = handles.init_parameter.threshold_probe;
set(handles.FR_edit_probability_probe, 'String', num2str(probe_threshold));

% Ranking method
if(  isempty( strfind(handles.init_parameter.ranking_method, 'probe')) < 0.5  )
    set(handles.FR_rb_probe_variable, 'Value', 1);
else
    set(handles.FR_rb_nb_feature, 'Value', 1);
end


% set ranking method ( only gram schmidt available )
set(handles.FR_rb_GS, 'Value', 1);


%Set selected advanced method
set(handles.FR_st_selected_adv_method, 'String', handles.init_parameter.adv_ranking_method);


%Diverse updates
set_button_availability(handles, hObject);
guidata(hObject, handles);
