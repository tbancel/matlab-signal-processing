
%function [computed_feature_new_data, predicted_labels, predicted_scores,validation_results,validation_results_infos]=Sigma_apply_model(new_data,init_parameter,init_method,selected_model,validation_or_application)
function [computed_feature_new_data, predicted_labels, predicted_scores,validation_results,validation_results_infos]=Sigma_apply_model(init_parameter,init_method,selected_model,validation_or_application)

%  function [computed_feature_new_data, predited_labels, predicted_scores,validation_results, validation_results_infos]
%                                                               =Sigma_apply_model(new_data,init_parameter,init_method,selected_model,validation_or_application)    
% This function is the last part of the SIGMA toolbox, it compute the
% performance of the selected model for new data or classify just new data.
% INPUTS: 
%    new_data : structures containig the path of the new data to lassify
%           it should contain the following field:
%           new_data.data_location : the path of the data 
%           new_data.subject : the list of the subjects for the classification
%   init_parameter :          the output of the Sigma_parameter_initialisation
%    init_method    :          the output of the Sigma_method_initialisation
%   selected_model :          the output of the Sigma_get_best_model
%   validation_or_application : string containig the word  'Validation' or 'Application'
%       Validation: the function will comput the performance of the model on
%           new data with known labels (validation data), the output 
%       Application : classyfy the new data according to the best model
%           selected by 'selected_model'
% OUPUTS: 
%   computed_feature_new_data : the matrix of the features computed according
%       to the selected methods, channels and bands from the 'selected_model'
%   predicted_labels : the prediction obtained from the
%       computed_feature_new_data with the best classifier defined in the selected_model 
%   predicted_scores : the associated score for the prediction
%   validation_results : structures containing the results only for the
%   validation case : validation_or_application,'Validation'
%% Apply model or validation model
    % in the case of the user specify data for the validation
     init_parameter.subject_for_validation=[5 6]; % should be implemented from Sigma_parameter_initialisation
    
    if strcmp(validation_or_application,'Validation')
        if isfield(init_parameter,'subject_for_validation')
            validation_data=1; % used to get the validation results
            new_data.data_location=init_parameter.validation_data_location;
            new_data.subject=init_parameter.subject_for_validation; % list of the new subjects/data
            new_data.nb_subject=length(new_data.subject);
            validation_results_infos='results of the validation data';

        else
            warning('SIGMA>> Validation data are not specified in init_parameter')
        end
      
    elseif strcmp(validation_or_application,'Application') %% TODO
            validation_data=0; 
            new_data.data_location=init_parameter.data_location; %%!! Implement the path of the new data
            new_data.subject=[1 2 3]; % list of the new subjects/data
            new_data.nb_subject=length(new_data.subject);
            validation_results=selected_model.performance_model;
            validation_results_infos='results of the training model, see selected_model fields';
    else
            warning('SIGMA>> oups... somthin is wrong....')
            error('SIGMA>> You must specify Validation or Application on the function')

    end
    
   
   
    %new_data=init_parameter;
    
    % Location of the new data
    if(isfield(new_data,'data_location'))
        data_location=new_data.data_location;
    else % the data are in the same path as the training set
        data_location=init_parameter.data_location;
    end

%%   
    
    subject=new_data.subject; % list of the subject 
    nb_subject=new_data.nb_subject;


%% Start from here    
    
%% Initialisation of the local vectors
    epochs=[];
    model_results =[];
    computed_feature_all=[];

    nb_feat_model=selected_model.nb_feat_model;
    method_number=nan(nb_feat_model,1);
    channel_number=nan(nb_feat_model,1);
    freq_band_number=nan(nb_feat_model,1);
    power_type=nan(nb_feat_model,1);

    
    % Extract the list of the methods/channels and bands used in the trainig phase
    for ind_feat=1:nb_feat_model
        method_number(ind_feat)=selected_model.best_organisation_ofr_model{ind_feat,2};
        channel_number(ind_feat)=selected_model.best_organisation_ofr_model{ind_feat,3};
        freq_band_number(ind_feat)=selected_model.best_organisation_ofr_model{ind_feat,4};
        power_type(ind_feat)=selected_model.best_organisation_ofr_model{ind_feat,5};
    end  

    
    
    % Exract the features from the model
    %init_param_apply_model=init_parameter;
    init_param_apply_model.apply_filter=ones(size(freq_band_number));
    init_param_apply_model.nb_bands=1; % only one time 
    init_param_apply_model.method=method_number;
   
    % for the fourrier Power (set always to 1)
    init_method(1).all_fourier_power=1;

    
    labels=[];
    % Extract the features from the OFR according to the training phase
    for Nsubj=1:nb_subject;
        % load the data associated to selected subject
        load([data_location 'subject_'  num2str(subject(Nsubj)) '.mat ']);

        init_param_apply_model.sampling_rate=s_EEG.sampling_rate;
        original_data=s_EEG; %% keep the data safe befor the transformation
        % The number of epochs
        nb_epochs=size(s_EEG.data,3);
        epochs=[epochs size(s_EEG.data,3)]; % it's seems to be the same  

        % The number of channels
        nb_channel((subject(Nsubj)))=size(s_EEG.data,1);

        labels=[labels s_EEG.labels];
        % initialisation of the memory
        computed_feature_all0=[];
        pw_results=[];

        for Nmethode=1:nb_feat_model
            %% New parameter for the apply model
            % select the associated band for the actual feature
            init_param_apply_model.filt_band_param=init_parameter.filt_band_param(freq_band_number(Nmethode));
            % select the associated channel numbers and names for the actual feature
            s_EEG.data=s_EEG.data(channel_number(Nmethode),:,:);
            s_EEG.channel_names=s_EEG.channel_names(channel_number(Nmethode));
            % select the actual band 
            init_param_apply_model.selected_band=freq_band_number(Nmethode);

            %% Extract the associated feature
             for Nepochs=1:nb_epochs
                 %Nmethode
                 %Nepochs
                 model_results=eval([init_method(init_param_apply_model.method(Nmethode)).fc_method_name '(init_param_apply_model,init_method,model_results,s_EEG,Nsubj,Nepochs,Nmethode);']) ;                                                                  
                 results=eval(['model_results.' (init_method(init_param_apply_model.method(Nmethode)).method_out) ';']);
                 %% only for the fourrier power (for now, later other methods will be included in the exception)   
                 if method_number(Nmethode)==1;
                    pw_results=[model_results.o_fourier_power_type model_results.o_fourier_power];
                 end

             end
             %%% clean the variable
                eval(['model_results.' (init_method(init_param_apply_model.method(Nmethode)).method_out) '=[];'])  ;       %%% In the case of the Fourier Power method=1;
             if method_number(Nmethode)==1;
                 index_to_select=find(pw_results(:,1)==power_type(Nmethode));
                 power_selected=pw_results(index_to_select,2:end);
                 computed_feature_all0=[computed_feature_all0; power_selected];
             else
                 computed_feature_all0=[computed_feature_all0; results];
             end
             pw_results=[];
             s_EEG=original_data;
        end 
                    computed_feature_all=[computed_feature_all computed_feature_all0];
    end
    
    % first out put of the function
    computed_feature_new_data=computed_feature_all;
    
    
    % Prediction for the new subjects
    classObj=selected_model.classObj;
    [YP, sc]=predict(classObj,computed_feature_new_data');
    predicted_labels=YP;
    predicted_scores=sc;

    
    if validation_data==1
    %% Compute the score in the case of validation
    [origin_labels, adapted_labels]=Sigma_set_labels(labels);
    
    predicted_groups=YP;
    actual_groups=adapted_labels';

    % results
    [confusion_matrix overall_pcc group_stats groups_list] = confusionMatrix3d(predicted_groups,actual_groups,0);
    [performance,performance_infos]=Sigma_compute_performance(actual_groups',YP',sc(:,1)');
    validation_results.confusion_matrix=confusion_matrix;
    validation_results.performance=performance;
    validation_results.performance_infos=performance_infos;
    validation_results.overall_pcc=overall_pcc;
    validation_results.group_stats=group_stats;
    end
end
