function features_results=Sigma_feature_extraction(init_parameter,init_method,features_results)

% Check the number of input argument
if nargin==2
    features_results=[];
end

%% This script extracts the features fromm EEG signals. 
% The extracted fatures are stored in a matrix 'features matrix'  

%% Initialisation 
%global nb_epochs ; % Vector containig the number of epochs for each subjects
nb_epochs=zeros(1,init_parameter.nb_subject); 
%global labels; % Vector of labels comming from the EEG data
labels=[];
epochs=[];
used_method=[];

%% SECTION 1 : a- Features extractions
% Loops over all the subjects / epochs / methods

% Get the option of sigma_show_comment (=1 : yes, =0 : no)
sigma_show_comment=init_parameter.sigma_show_comment;
% Get the number of subject from the init_parameter 
nb_subject=init_parameter.nb_subject;
subject_epoch=[];% indicator of the appartenance of the epochs to the exampel
%%%
for Nsubj=1:init_parameter.nb_subject
h=waitbar(Nsubj/nb_subject,['Feature extraction ' num2str(Nsubj) '/' num2str(nb_subject) '  please wait...'],'name','SIGMA');
%waitbar(Nsubj/nb_subject);

    %%%

    if sigma_show_comment==1   
        disp('=======================    New Subject     =======================')
        disp(['Loading the EEG data : Subject N°:', num2str((init_parameter.subject(Nsubj)),'%10.2d'),'...'])
    end

    % loead the data associated to selected subject
    %load([init_parameter.data_location strcat('s',num2str(init_parameter.subject(Nsubj)), '.mat ')]);
    load([init_parameter.data_location, 'subject_' num2str(init_parameter.subject(Nsubj)) '.mat']);

    if sigma_show_comment==1   
        disp('===================    Features extraction     =====================')
        disp(['The total number of epochs is:', num2str(size(s_EEG.data,3),'%10.2d')])      
    end
    
    %% The sampling rate (get it only one time), it's supposed to be the same for all the subject from the same session
    if  Nsubj==1 % && init_parameter.sampling_rate_default==0 
        sampling_rate=s_EEG.sampling_rate;
        channel_name=s_EEG.channel_names;
        
        init_parameter.sampling_rate=sampling_rate;
        init_parameter.channel_name=channel_name;

    end

    %% The number of epochs
    nb_epochs((init_parameter.subject(Nsubj)))=size(s_EEG.data,3);
    epochs=[epochs size(s_EEG.data,3)]; % it's seems to be the same  

    %% The number of channels
    nb_channels((init_parameter.subject(Nsubj)))=size(s_EEG.data,1);
    
    %% The number of samples (times point)
    nb_samples((init_parameter.subject(Nsubj)))=size(s_EEG.data,2);
    %epochs_duration=nb_samples/init_parameter.sampling_rate

    %% The labels associated the the epochs
    labels=[labels s_EEG.labels];
    %init_parameter.labels=labels;
    % Loop over all the epochs
    nb_epoch=size(s_EEG.data,3);
    for Nepochs=1:size(s_EEG.data,3)
        
        subject_epoch=[subject_epoch; init_parameter.subject(Nsubj) Nepochs];
        
        if sigma_show_comment==1   
            disp('===================    Features extraction     =====================')
            disp(['Subject N°: ' num2str((init_parameter.subject(Nsubj)),'%10.2d') '| [ subject ' num2str(Nsubj,'%10.2d') '/' num2str(nb_subject,'%10.2d') ']'])    
            disp(['Epochs N°: ' num2str(Nepochs,'%10.2d') '/' num2str(nb_epoch,'%10.2d')])  
        end
        
        
        
        % Loop over the methods
        nb_method=length(init_parameter.method);
        for Nmethode=1:length(init_parameter.method)
            method_number=(init_method(init_parameter.method(Nmethode)).method_number);
            method_name=init_method(init_parameter.method(Nmethode)).method_name ;
            
            if sigma_show_comment==1   
                disp(['Method N°: ' num2str(method_number,'%10.2d') ' | [ method : ' num2str(Nmethode,'%10.2d') ' / ' num2str(nb_method,'%10.2d')  ']'])
                disp(['Method name: ' method_name ])
                %used_method=[used_method; {init_method(init_parameter.method(Nmethode)).method_name}]
            end
            %% check if this method is part of the wavelet list
            if init_parameter.wavelet_transform==1
                wt_method_list=init_method(25).wt_method_list;
                % method (wavlet is already executed)
                is_wt_method=find(wt_method_list==method_number);
                        if ~isempty(is_wt_method)
                            disp('This method is computed on the wavelet transform ...') ;
                            disp('Go to the next method...') ;
                            continue
                        end
            end
            
            if sigma_show_comment==1   ; disp('Compute the feature of the current method...') ;end
            % Execute the associated method défined in the scrupt "init_method(Nmethode).method_name"
            execute_as=2; % (1 for the script, 2 for the function)
            if execute_as==1
            % Execute as a script
                if sigma_show_comment==1   ; disp('execute as a script');end
                eval(init_method(init_parameter.method(Nmethode)).method_name) ;    
            else
            % Execute as a function
            if sigma_show_comment==1; disp('execute as a function');end
                features_results=eval([init_method(init_parameter.method(Nmethode)).fc_method_name '(init_parameter,init_method,features_results,s_EEG,Nsubj,Nepochs,Nmethode)']) ;                                                                  
            end
            
            if sigma_show_comment==1; disp('----------------------');end            
        end
    end
 close(h) %% close the wait bare
end

%subject_epoch=[(1:length(subject_epoch))' subject_epoch];

%% Set the labels to "-1" and "1"
% origin_labels=labels;%labels=origin_labels
% temp=labels;
% temp=unique(temp);
% if length(temp)==2
% labels(labels==temp(1))=-1;
% labels(labels==temp(2))=1;
% else
% error('SIGMA MESSAGE : There is more than 2 labels, this version is not addapted for your data ...')
% end
[origin_labels, new_labels]=Sigma_set_labels(labels);

features_results.origin_labels=origin_labels;
features_results.labels=new_labels;
features_results.epochs=epochs;
features_results.nb_epochs=nb_epochs;
features_results.sampling_rate=sampling_rate;
features_results.nb_channels=nb_channels;
features_results.subject_epoch=subject_epoch;
%features_results.s_EEG=s_EEG;

%% Creat a list of the used method in this session
for Nmethode=1:length(init_parameter.method)
    used_method=[used_method; {init_method(init_parameter.method(Nmethode)).method_name}];
end
features_results.used_method=used_method;

% Used by all the methods
features_results.method_band_infos={'N° Method','N° Channel','N° band'};

clear Nsubj s_EEG Nmethode i_EEG
%clean_local_data
    if sigma_show_comment==1
        disp('===================   End of Features extraction     =====================');
    end
end