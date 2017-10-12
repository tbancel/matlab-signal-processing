function handles = DC_update_svm_parameter(handles, hObject)


kernel = get(handles.SVME_pum_kernel, 'String');
selected_kernel = get(handles.SVME_pum_kernel, 'Value');
handles.input.kernel = kernel{selected_kernel};

% Gaussian value
handles.input.gaussian_value = str2num(get(handles.SVME_edit_GV_low, 'String')):str2num(get(handles.SVME_edit_GV_step, 'String')):str2num(get(handles.SVME_edit_GV_high, 'String'));
% polynomial value
handles.input.polynomial_value = str2num(get(handles.SVME_edit_PV_low, 'String')):str2num(get(handles.SVME_edit_PV_step, 'String')):str2num(get(handles.SVME_edit_PV_high, 'String'));
% hyper parameter
handles.input.constraint = str2num(get(handles.SVME_edit_cons_low, 'String')):str2num(get(handles.SVME_edit_cons_step, 'String')):str2num(get(handles.SVME_edit_cons_high, 'String'));

% other parameters
handles.input.tolkkt = str2num(get(handles.SVME_edit_kkttol, 'String')); 
handles.input.violation = str2num(get(handles.SVME_edit_violation, 'String')); 
handles.input.retest = str2num(get(handles.SVME_edit_retest, 'String')); 
handles.input.stability_test = str2num(get(handles.SVME_edit_stability, 'String')); 

disp(handles.input)























