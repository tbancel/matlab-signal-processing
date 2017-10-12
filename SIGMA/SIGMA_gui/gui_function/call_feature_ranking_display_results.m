function handles = call_feature_ranking_display_results(handles, hObject)

disp('CODE THIS FUNCTION')

isfield(handles.features_results,'o_best_features_matrix')
if(isfield(handles.features_results,'o_best_features_matrix') > 0.5)
    feature_ranking_result_visualisation_gui(handles.features_results,handles.init_method );
else
    feature_ranking_result_visualisation_gui();
end
guidata(hObject, handles);

end