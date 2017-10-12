function features_results=Sigma_feature_assembling(init_method,init_parameter,features_results)
%% This function is used to get the final feature matrix, 
% it assembles the output of the differents methods used in the session of
% the feature extraction 





if init_parameter.sigma_show_comment==1;
    display('=======================    Matrix feature assembly     =======================')
end
%% SECTION 1 : b- Matrix feature assembly (o_features_matrix)
% This script assemble the final features matrix according to the number of subjects and methods 
o_features_matrix=[]; % The final matrix of features resulting from the methods chosen by the user
o_features_matrix_id=[];
channel_method=[]; % Index to identify the methods inside the features_matrix, number of the line and the method
size_matrix=[]; % features matrix size, used just to check

for Nmethode=1:length(init_parameter.method)
       % if init_parameter.method(Nmethode)==1
       %     continue
       % else
                % code to get the name of the actual metho
                s1=features_results.used_method(Nmethode); % get from the used method in this session
                s2=(init_method(init_parameter.method(Nmethode)).method_name); % get from the initialisation
                tf = strcmp(s1,s2);

                if strcmp(s1,s2)
                    size_matrix=[size_matrix; size(features_results.(init_method(init_parameter.method(Nmethode)).method_out))];
                    % Matrix feature assembly
                    o_method=(init_method(init_parameter.method(Nmethode)).method_out);
                    o_features_matrix=[o_features_matrix;features_results.(o_method)];    
%                     % romove from the structure
%                     features_results=rmfield(features_results,(o_method)); % romove field from structure

                    toto=[(init_method(init_parameter.method(Nmethode)).method_out) '_band'];
                    o_features_matrix_id=[o_features_matrix_id; features_results.(toto)];
                    %features_results.(toto)=[];
%                     features_results=rmfield(features_results,toto); % romove field from structure
            % Identification of the methods and channels 
                    B = repmat( init_method(init_parameter.method(Nmethode)).method_number,[size(features_results.(init_method(init_parameter.method(Nmethode)).method_out),1),1] );        
                    channel_method=[channel_method; (1:length(B))' B];% This variabel is used in order to identify the methods and channel for the next analysis
                    clear (init_method(init_parameter.method(Nmethode)).method_out)  
                    clear B

                end
       % end
                    % romove the individual method from the results
                    if init_parameter.remove_individual_features=='Y'
                        features_results=rmfield(features_results,(o_method)); % romove field from structure
                        features_results=rmfield(features_results,toto); % romove field from structure
                    end

end   

            features_results.channel_method=channel_method;
            features_results.o_features_matrix=o_features_matrix;
            features_results.o_features_matrix_id=o_features_matrix_id;
            features_results.o_features_matrix_id_infos={' N° Method  N°Channel   N°Band '};

    %% Display the results        
    if init_parameter.sigma_show_comment==1;
            % Testing the size of the matrixs
            if ( (size(o_features_matrix,1)==sum(size_matrix(:,1))) && (size(o_features_matrix,2)==size_matrix(1,2)) )

            display('=======================   Informations    ==================')
            display('The features matrix has the right dimension')
            display(['The dimension of the feature matrix is : ' num2str(size(o_features_matrix))]) 
            display(['The list of subject is : ' num2str(init_parameter.subject)])
            display(['The number of subject is : ' num2str(init_parameter.nb_subject)])
            display(['The number of epochs of each subject is : ' num2str((features_results.nb_epochs))])
            display(['The total number of epochs is : ' num2str(sum(features_results.nb_epochs))])
            
            display(['The list of the used method(s) is : ' num2str((init_parameter.method))])           
            display(['The total number of method(s) is : ' num2str(length(init_parameter.method))])
            display(['The filters vector is  : ' num2str((init_parameter.apply_filter))])
            display(['The filters are applied for the methods : ' num2str(init_parameter.method(find(init_parameter.apply_filter==1)))])
            display(['The total number of appliyed filter is : ' num2str(sum(init_parameter.apply_filter))])
            display(['The selected band(s)\n :' sprintf('\n ') sprintf('     %s\n ',init_parameter.selected_freq_list{:})])
            display(['The total number of bands is : ' num2str((init_parameter.nb_bands))])

            display(['The total number of channels is : ' num2str((init_parameter.nb_channels))])
            display(['The total number of features is : ' num2str(length(channel_method))])

            display(sprintf (['The used methods for features are: \n  \t      '  sprintf('%s\n  \t      ', features_results.used_method{:})]))
            end
    
            clear Nmethode   
            display('=======================   End of Matrix feature assembly    ==================')
    end
      
     %% Display the results  sigma_write_logFile==1;   
    if init_parameter.sigma_write_logFile==1
            % Testing the size of the matrixs
            if ( (size(o_features_matrix,1)==sum(size_matrix(:,1))) && (size(o_features_matrix,2)==size_matrix(1,2)) )
            logFilename=init_parameter.logFilename;
            fid = fopen(logFilename,'a');

                fprintf(fid,'\n %s','==== Informations : Sigma Feature assembling    ====');
                fprintf(fid,'\n %s','The features matrix has the right dimension');
                fprintf(fid,'\n %s',['The dimension of the feature matrix is : ' num2str(size(o_features_matrix))]) ;
                fprintf(fid,'\n %s',['The list of subject is : ' num2str(init_parameter.subject)]);
                fprintf(fid,'\n %s',['The number of subject is : ' num2str(init_parameter.nb_subject)]);
                fprintf(fid,'\n %s',['The number of epochs of each subject is : ' num2str((features_results.nb_epochs))]);
                fprintf(fid,'\n %s',['The total number of epochs is : ' num2str(sum(features_results.nb_epochs))]);

                fprintf(fid,'\n %s',['The list of the used method(s) is : ' num2str((init_parameter.method))])   ;        
                fprintf(fid,'\n %s',['The total number of method(s) is : ' num2str(length(init_parameter.method))]);
                fprintf(fid,'\n %s',['The filters vector is  : ' num2str((init_parameter.apply_filter))]);
                fprintf(fid,'\n %s',['The filters are applied for the methods : ' num2str(init_parameter.method(find(init_parameter.apply_filter==1)))]);
                fprintf(fid,'\n %s',['The total number of appliyed filter is : ' num2str(sum(init_parameter.apply_filter))]);
                fprintf(fid,'\n %s',['The selected band(s)\n :' sprintf('\n ') sprintf('     %s\n ',init_parameter.selected_freq_list{:})]);
                fprintf(fid,'\n %s',['The total number of bands is : ' num2str((init_parameter.nb_bands))]);

                fprintf(fid,'\n %s',['The total number of channels is : ' num2str((init_parameter.nb_channels))]);
                fprintf(fid,'\n %s',['The total number of features is : ' num2str(length(channel_method))]);

                fprintf(fid,'\n %s',sprintf (['The used methods for features are: \n  \t      '  sprintf('%s\n  \t      ', features_results.used_method{:})]));
            fclose(fid);
            end
    end           
end
