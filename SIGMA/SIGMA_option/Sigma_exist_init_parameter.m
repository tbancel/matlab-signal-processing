% function init_parameter=Sigma_exist_init_parameter()
% Help : Check if init_parameter is in the workspace 'base' % Joffrey
 W = evalin('base','whos'); %or 'base'
    if ismember('init_parameter',[W(:).name]);
        init_parameter_eegfc = evalin('base', 'init_parameter');
        if isfield(init_parameter_eegfc,'reference');
            init_parameter.reference=init_parameter_eegfc.reference;
        end
        if isfield(init_parameter_eegfc,'EOI');
             init_parameter.EOI=init_parameter_eegfc.EOI;
        end
        evalin( 'base', 'clear(''init_parameter_eegfc'')' )    
    end