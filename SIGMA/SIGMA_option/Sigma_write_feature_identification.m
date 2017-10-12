function Sigma_write_feature_identification(filename,init_parameter,init_method,features_results)
%%%------------------------------------------------------------------------
%% [ best_organisation, best_organisation_infos]=Sigma_write_FS_identification(init_parameter,init_method,features_results,idx_best_features)
%     Function task:   write a texte file with the best feature an there
%     identificationi
%     
%     This Function is part of SIGMAbox, It used to identify the features by finding the origin (method, chanel, band ...) 
% Inputs     
%     The input is the initial parameters 
%     init_parameter : and the initialisation
%     of the methods
%     init_method :,and the 
%     features_results mainly 
%     the followings outputs of the function
%     Sigma_parameter_initialisation
%     Sigma_frequency_initialisation 
%     Sigma_frequency_initialisation
%     Sigma_method_initialisation
%     Sigma_feature_extraction
%     idx_best_features : Vector with the dimension of Nx1,  is the output of the OFR, which is the vector
%     containing the rank index of the N best features from the feature matrix
% Outputs
%     The Output is [ best_organisation, best_organisation_infos]
%     best_organisation: a matrix containing the best organisation 
%     best_organisation_infos={'bst_index','bst_method_N°','bst_channel_N°/couple_channel','bst_band','bst_power_type(only for DSP:1 abs,2 relative)'};
%--------------------------------------------------------------------------
%
%   Sections :
%       Section 1 - Initializations
%       Section 2 - Identification of the features 
%
%   Main Variables
%       init_parameter,init_method,features_results,
%
%   Dependencies
%       Initialize_environment should be runed before 
%
%   NB: this code is copyrighted. 
%   Please refer to copyright info in the file footer.
%%%------------------------------------------------------------------------


%% Section 1 - Initializations

% Channels names
% nb_channels=size(features_results.s_EEG.channel_names,2);
% nb_channels=unique(init_parameter.nb_channels);
% 
% s_EEG=features_results.s_EEG;
% channel_name=s_EEG.channel_names;

% Fullfill the identification vectore for the power %% WHY ??? forgot why
idx_best_features=features_results.idx_best_features;
filename=[filename '.txt'];


o_features_matrix_id=features_results.o_features_matrix_id;
if isfield(features_results,'o_fourier_power_type')
    o_power_type=features_results.o_fourier_power_type;
    o_power_type_with_nan=[o_power_type;nan(size(o_features_matrix_id,1)-size(o_power_type,1),1)];
end

channel_name=init_parameter.channel_name;
channel_method=features_results.channel_method;    

% idx_best_features : is the line index of the best features in the
% o_matrix_features, % This line give the index and the method of the 'nb_features' best features
best_channel_method=channel_method(idx_best_features,:); 
best_organisation=[];

%% Section 2 - Identification of the features 
% Find the best method name associated with best channel 
for ind2=1:length(idx_best_features)
    %Best index
    best_index=idx_best_features(ind2);
    %Best method
    best_method_number=init_method(best_channel_method(ind2,2)).method_number;
    best_method_number_bis=o_features_matrix_id(idx_best_features(ind2),1);
    best_method_name=init_method(best_method_number).method_name;

 %% WARNING all the methods fotr one channel should be under 50
    if best_method_number<50 %% all the methods using only one channel for the featues 
        %Best channel
        best_channel_number=o_features_matrix_id(idx_best_features(ind2),2);
        best_channel_name=channel_name(best_channel_number);
        best_channel_name = sprintf('%s',best_channel_name{:}); % convert into string

    else %% TODO : To be cheked
        % Synchronisation methods  
        channels_combinaison=features_results.channels_combinaison; % to be declared in the begining

        best_channel_number0=o_features_matrix_id(idx_best_features(ind2),2);
        best_channel_number=channels_combinaison(best_channel_number0,:);

        best_channel_name=channel_name(best_channel_number);
        best_channel_name = sprintf('%s',best_channel_name{1},'-',best_channel_name{2}); % convert into string
    end

    %%% Best band
    best_band=o_features_matrix_id(idx_best_features(ind2),3);
    if (best_band==0 || best_band==8 || isnan(best_band))
    %    best_band_name=['all bands or not applied filters  : [' num2str(min(min(init_parameter.selectd_freq_bands))) '  ' num2str(max(max(init_parameter.selectd_freq_bands))) '] Hz' ];
            best_band_name='all bands or not applied filters...';
        %best_band_name=sprintf('%s',best_band_name{:});
    else
        ind0=find(best_band==init_parameter.selected_band);
        best_band_name=init_parameter.selected_freq_list(ind0);
        best_band_name=sprintf('%s',best_band_name{:});
    end

    if best_method_number==1
        %Best power type
        best_power_type=o_power_type_with_nan(idx_best_features(ind2));
        % Power type info
        %infos=sprintf('%s',features_results.o_power_type_infos{:}); 
        info = {'all bands','Absolute','Retalive'};
        info=info(best_power_type+1);
        info=sprintf('%s',info{:});       
        
        %% Write text file for the GUI Aurélien 
        %if init_parameter.sigma_write_logFile==1;
            cd(init_parameter.sigma_directory)
                cd(init_parameter.data_output)
                    cd(init_parameter.session_name)
                        Filename=filename;
                        fid = fopen(Filename,'a');
                            fprintf(fid,'\n %s',['The feature ' num2str(best_index)  ' is ranked ' num2str(ind2) ' and comes from method N°:  '...
                            num2str(best_method_number) '  (' best_method_name '); channel N°: '...
                            num2str(best_channel_number) '(' best_channel_name  '); band N°: ' num2str(best_band) '(', best_band_name ,'); power type N°: '...
                            num2str(best_power_type) ', Type : ' info '.'] );
                        fclose(fid);
            cd(init_parameter.sigma_directory)        
        %end
        best_organisation=[best_organisation;best_index {best_method_number} best_channel_number best_band best_power_type];
        %best_organisation_infos={'best_index','best_method_number','best_channel_number','best_band','best_power_type'};
    else
               
         %% Write text file for the GUI Aurélien 
        %if init_parameter.sigma_write_logFile==1;
            cd(init_parameter.sigma_directory)
                cd(init_parameter.data_output)
                    cd(init_parameter.session_name)
                        Filename=filename;
                        fid = fopen(Filename,'a');
                            fprintf(fid,'\n %s',['The feature ' num2str(best_index)  ' is ranked ' num2str(ind2) ' and comes from method N°:  '...
                            num2str(best_method_number) '  (' best_method_name '); channel N°: '...
                            num2str(best_channel_number) '(' best_channel_name  '); band N°: ' num2str(best_band) '(', best_band_name ,'); '] );
                        fclose(fid);
            cd(init_parameter.sigma_directory)        
        %end
                  
            best_organisation=[best_organisation;best_index {best_method_number} best_channel_number best_band nan];
    end
end
%best_organisation_infos={'best_index','best_method_number','best_channel_number / couple of channel','best_band','best_power_type (only for Fourrier power : 1 abs, 2 relative)'};
%best_organisation_infos={'bst_index','bst_method_N°','bst_channel_N°/couple_channel','bst_band','bst_power_type(only DSP:1 abs,2 relative)'};
end


%%
% % %----------------------------------------------------------------------
% % %                  Brain Computer Interface team
% % % 
% % %                            _---~~(~~-_.
% % %                          _{        )   )
% % %                        ,   ) -~~- ( ,-' )_
% % %                       (  `-,_..`., )-- '_,)
% % %                      ( ` _)  (  -~( -_ `,  }
% % %                      (_-  _  ~_-~~~~`,  ,' )
% % %                        `~ -^(    __;-,((()))
% % %                              ~~~~ {_ -_(())
% % %                                     `\  }
% % %                                       { }
% % %   File created by Takfarinas MEDANI
% % %   Creation Date : 12/06/2017
% % %   Updates and contributors :
% % %       12/06/2017 Takfarinas MEDANI created the first version of this code
% % %
% % %   Citation: [creator and contributor names], SigmaBOX, available 
% % %   online 2017.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2017
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------