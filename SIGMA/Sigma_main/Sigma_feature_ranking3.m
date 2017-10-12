function [features_results]=Sigma_feature_ranking3(init_parameter,init_method,features_results,leave_one_subject_out_results,Nfeat)
% On this Version We remplace the features methods selectrion withe the
% function Sigma_ranking_methods ;
% This script use the Gram Schmit method for the Orthogonal Forward Regression to rank the features and also to identify the associated method 
% The number of argument
nVarargs = nargin;
% General case, without a loop on the number of features and LOSO
if (nVarargs==3)
        % The number of features to rank
        nb_features=init_parameter.nb_features;
        % The feature matrix 
        if isfield(features_results,'o_features_matrix_normalize')
            % normalized with the Zscore
            o_features_matrix=features_results.o_features_matrix_normalize;
        else
            % not normalized
            o_features_matrix=features_results.o_features_matrix;
        end  
        % The labels
        labels=features_results.labels;
end

%% Leave one out case with a fixed number of feature
if (nVarargs==4)
    % The number of features to rank
    nb_features=init_parameter.nb_features;
    % The feature matrix
    o_features_matrix=leave_one_subject_out_results.o_features_matrix_leave_one_out;
    % The labels
    labels=leave_one_subject_out_results.labels_leave_one_out;
end

%% Leave one out case and à specific number of feature to the study
if (nVarargs==5)
    % The number of features to rank
    nb_features=Nfeat;
    % The feature matrix
    o_features_matrix=leave_one_subject_out_results.o_features_matrix_leave_one_out;
    % The labels
    labels=leave_one_subject_out_results.labels_leave_one_out;
end


%% Test the number of feature to rank
nb_feature_to_rank=init_parameter.nb_features;
nb_real_of_feature=size(features_results.o_features_matrix,1);

if(nb_feature_to_rank>nb_real_of_feature)
    warndlg(['Number of Feature to rank = '  num2str(nb_feature_to_rank) ' is greater than the real number of features' ...
        ', please reduce this number under ' num2str(nb_real_of_feature) ' (the real number of features)' ],'SIGMA Warning !!');
    return
end  


% The ranking method
ranking_method=init_parameter.ranking_method;

% Identification of the feaures
o_features_matrix_id=features_results.o_features_matrix_id;

% Fullfill the identification vectore for the power %% WHY ???
if isfield(features_results,'o_fourier_power_type')
    o_power_type=features_results.o_fourier_power_type;
    o_power_type_with_nan=[o_power_type;nan(size(o_features_matrix_id,1)-size(o_power_type,1),1)];
end

%%    Displaying Information on the screen
if init_parameter.sigma_show_comment==1
    display('********************** Start of OFR Ranking Algorithm *********************************')
    display(['You have selected the ' , ranking_method, ' method for the ranking'])
    display(['The feature matrix has the dimension of : ' num2str(size(o_features_matrix))])

    if (nVarargs<=3)
        display('You have selected  "All the feature matrix" for the ranaking ...')
    end
    if (nVarargs>3)
        display('You have selected the "LOSO feature matrix" for the ranking ...')
    end
end


%%    Writing the Information on the LogFile
if init_parameter.sigma_write_logFile==1
    cd(init_parameter.sigma_directory)
            cd(init_parameter.data_output)
            mkdir(init_parameter.session_name)
                cd(init_parameter.session_name)
                    logFilename=init_parameter.logFilename;
                    fid = fopen(logFilename,'a');
    fprintf(fid,'\n %s','*** Start of OFR Ranking Algorithm ***');
    fprintf(fid,'\n %s',['You have selected the ' , ranking_method, ' method for the ranking']);
    fprintf(fid,'\n %s',['The feature matrix has the dimension of : ' num2str(size(o_features_matrix))]);

    if (nVarargs<=3)
        fprintf(fid,'\n %s','You have selected  "All the feature matrix" for the ranaking ...');
    end
    if (nVarargs>3)
        fprintf(fid,'\n %s','You have selected the "LOSO feature matrix" for the ranking ...');
    end
    fclose(fid);
cd(init_parameter.sigma_directory)         
end


 
%% The choice of the OFR method and the idx_best_features

[idx_best_features]=Sigma_ranking_methods(init_parameter,o_features_matrix,labels,nb_features,ranking_method);

    
if isempty(idx_best_features)
        warning('------------------------------------------------------------------------------------------' )
        display('------------------------------------Warning-------------------------------------------' )
        display(['No feature selection with the ' num2str(init_parameter.threshold_probe*100) ' %, please repeat the process' ] )
        warning('No feature selected from the ofr...' )
else
%% Identification of the features 
% Channels names
%nb_channels=size(features_results.s_EEG.channel_names,2);
%nb_channels=unique(init_parameter.nb_channels);
% 
% s_EEG=features_results.s_EEG;
% channel_name=s_EEG.channel_names;

%channel_name=init_parameter.channel_name;
channel_method=features_results.channel_method;    

% idx_best_features : is the line index of the best features in the
% o_matrix_features, % This line give the index and the method of the 'nb_features' best features
best_channel_method=channel_method(idx_best_features,:); 
best_organisation=[];
% Find the best method name associated with best channel 

%% Features Identification
[ best_organisation, best_organisation_infos]=Sigma_feature_identification(init_parameter,init_method,features_results,idx_best_features);


% Creat the matrix with only the best features 
if (nVarargs<=3)
    o_best_features_matrix=o_features_matrix(idx_best_features,:);
    features_results.o_best_features_matrix= o_best_features_matrix;
    features_results.idx_best_features=idx_best_features; 
    features_results.best_organisation=best_organisation;
    features_results.best_organisation_infos=best_organisation_infos;
end

if (nVarargs>3)
% Creat the matrix with only the best features 
o_best_features_matrix=o_features_matrix(idx_best_features,:);
features_results.features_results_leave_one_subject_out.o_best_features_matrix= o_best_features_matrix;
features_results.features_results_leave_one_subject_out.idx_best_features=idx_best_features; 
features_results.features_results_leave_one_subject_out.best_organisation=best_organisation;
end

    
if init_parameter.sigma_write_logFile==1;
    cd(init_parameter.sigma_directory)
            cd(init_parameter.data_output)
%            mkdir(init_parameter.session_name)
                cd(init_parameter.session_name)
                    logFilename=init_parameter.logFilename;
                    fid = fopen(logFilename,'a');
                      fprintf(fid,'\n %s','*** End of OFR Ranking Function ***');
                       fclose(fid);
       cd(init_parameter.sigma_directory)                       
end
    
    fclose('all');
    
    
if init_parameter.sigma_show_comment==1;
    display('********************** End of OFR Ranking Function *********************************')
end
end
end
