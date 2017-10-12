function handles = call_apply_model_GUI(handles, hObject)


if( isfield(handles, 'selected_model') < 0.5)
    apply_model_gui(handles.selected_model);
else
    apply_model_gui();
end



end


