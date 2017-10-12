function init_parameter=Sigma_parameter_initialisation()
%% ------------------------------------------------------------------------
%   Script tasks:
%   This scipt initializes the SIGMA toolbox parameters
%   User can add/modify the data in this file
%   User can choos the parameters for the simulation 
%   This file contains the description of the parametres which are to
%   extract and classify the features

%% The features axtractions' methodes are listed following this order:
%% LISTE OF METHODS 

% $$ TODO : this list is not updated, please check and updat this liste...

% Method 1 : Power Spectrum 
% Method 2 : Fractal Dimension 
% Method 3 : Sample Entropy 
% Method 4 : Mean value 
% Method 5 : Energy time domaine 
% Method 6 : Kurtusis 
% Method 7 : Skewness 
% Method 8 : minmax value
% Method 9 : slope_sign 
% Method 10 : wavelength_value  
% Method 11 : msav_value' 
% Method 12 : mean_norm_enveloppe (Abs Hilbert) 
% Method 13 : zero_crossing_cpt
% Method 14 : slope_signe_change_cpt
% Method 15 : mean_time_between_oscillation 
% Method 16 : mean_amplitude_between_oscillation
% Method 17 : mean_norm_fft
% Method 18 : std_deviation_fft 
% Method 19 : variance_fft 
% Method 20 : entropy_value (using matlab function)
% Method 21 : variance_value 
% Method 22 : std_deviation_value 
% Method 23 : ....
% Method 24 : .....
% Method 25 to 35: differents wavelets transforms 
% Method 26 : wt_kurtosis : kurtosis devation of the magnetude
% Method 27 : wt_std : standard devation of the magnetude


% Methode 100 : random_noise_features_1
% Methode 200 : random_noise_features_2


%% User : User must fixe the name of the eeg data as fixed by the BCI toolbox (
%$ TODO : we should fixe that later
%$ TODO : use the global parameters ... if necessary check with fran?ois...
%global init_parameter;


%% Specify the use or not of the gui
prompt = 'Do you want to use the GUI for the BCI toolbox? Y/N : ';
%str = input(prompt,'s');
str='N';

if str == 'Y' % in this case the user will use the SIGMA from the gui 
    %$ TODO : adapt the GUI with this script, discussion with Aur?lien & FV
    gui=1;
    %% Lunch and Get the Data from The GUI 
    % TODO : all the parameters should be fixed/choosen from the GUI
    test_gui_0;
    
elseif  str == 'N'
    %% In this case all the pre initialisation will be registred from this script
    % gui=0;
    
    %% Reinstalation of SIGMA BOX (just in case)
    % To be sure that you are in the SIGMA directpry!
    %Sigma_install()
    %% Specify the sigma work directory
    sigma_directory=pwd;
    init_parameter.sigma_directory=sigma_directory;   

    
    %% Check if init_parameter is in the workspace 'base' % Joffrey
    Sigma_exist_init_parameter
   
    %% Specify the output file for the results for the session 
    if ispc
    data_output='SIGMA_output\'; 
    end
    if ismac
        data_output='SIGMA_output/'; 
    end
    init_parameter.data_output=data_output;
    if ~isfield(dir,data_output)
        cd(sigma_directory)
        mkdir(data_output)
    end
        
    %% Create/Specify the name of the session/the Log File and the diary File
    % User can either choose the name of the current session by defining
    % the name or the name was created by default according to the date and
    % the time of creation
    
    default_name=1;
    if default_name==1
        session_name='default';
    else
        prompt = 'Please tape the name of your session (press enter for default) : ';
        session_name = input(prompt,'s');
    end
    % Creat the session
    init_parameter=Sigma_create_session_name(init_parameter,session_name);
    
    full_session_name=fullfile(data_output,init_parameter.session_name);
    init_parameter.full_session_name=full_session_name;
    %% 00 - Pre-parametrage
    %% Choose the option 
    sigma_show_comment=1; % to display or not the comment on the terminal
    sigma_write_logFile=0; % to write the log file (specified by the toolbox)
    sigma_write_diaryFile=1; % to write the diary file (all thing that is displayed on the terminal)
    

    % The comment, diary and logfile
    init_parameter.sigma_show_comment=sigma_show_comment;
    init_parameter.sigma_write_logFile=sigma_write_logFile;
    init_parameter.sigma_write_diaryFile=sigma_write_diaryFile;
 
    
       
   %% Writ the Diary file
    Sigma_diary_file(init_parameter)
    sigma_comment='You should modify the parameters in this script "Sgma_parameter_initialisation" ';
    Sigma_comment(init_parameter,sigma_comment)  
   
   

    %% Parameters from This Script
    %% 0- Select the path of your data : The path of the EEG data
    if ispc
        training_data_location='SIGMA_data\'; 
        %training_data_location='C:\Users\Takfarinas\Documents\Projet BME data&codes\';
        %training_data_location='C:\Users\Takfarinas\Documents\BCI toolbox V3 version 24 02 2017\artefacted\'
        validation_data_location='SIGMA_data\';
        application_data_location='SIGMA_data\';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\WMfiles\'; 
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\Alzeimer\';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\Protocole_bioeedback\';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\Protocole_bioeedback\session2\';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\artefacted\';
    end
    
    if ismac
        training_data_location='SIGMA_data/'; 
        %training_data_location='C:\Users\Takfarinas\Documents\Projet BME data&codes\';
        %training_data_location='C:\Users\Takfarinas\Documents\BCI toolbox V3 version 24 02 2017\artefacted\'
        validation_data_location='SIGMA_data/';
        application_data_location='SIGMA_data/';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\WMfiles\'; 
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\Alzeimer\';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\Protocole_bioeedback\';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\Protocole_bioeedback\session2\';
        %data_location='C:\Users\Takfarinas\Documents\BCI toolbox\artefacted\';
    end
    init_parameter.data_location=training_data_location;
    init_parameter.validation_data_location=validation_data_location;
    init_parameter.application_data_location=application_data_location;

    % Just to teste the performance of the CrossValidation, available only
    % for the power spectrum as a script
    try_random_data=0;
    init_parameter.random_data=try_random_data;
    
    %% 1- List of subjects to study
    % list of the subject for the trainig phase
    subject=[1 2]; 
    %subject_name=
    % list of the subject for the validation or test phase/or validation is
    % the same thing
    
    
    subject=sort(subject); % $ TODO use unique to evitate the double
    subject=unique(subject); 
    nb_subject=length(subject); % 

    
        % these parameters are used for the data-visualisation. Some of them
    % will be initialised from the GUI
    sigma_display_data=1;
    subject_to_display=subject(1);%% temporary, to be implemented from the gui
    epoch_to_display=1;%% temporary, to be implemented from the gui
    if sigma_display_data==1
        init_parameter.sigma_display_data=sigma_display_data;
        init_parameter.epoch_to_display=epoch_to_display;
        init_parameter.subject_to_display=subject_to_display;
    end
    
    
    % in the case of the user specify data for the validation
    subject_for_validation=[6,8];
    subject_for_validation=sort(unique(subject_for_validation));
    
    init_parameter.subject_for_validation=subject_for_validation;
    init_parameter.subject=subject;   
    init_parameter.nb_subject=nb_subject;
    
    %% 2- Fr?quency initialisation
    % List of bands to study (pleae refers to the 'Sigma_frequency_initialisation.m' for the details)
    selected_band=[1,2]; % refers to the sigma_frequency_initialisation
    
    selected_band=unique(selected_band); 
    selected_band=sort(selected_band);
    nb_bands=length(selected_band);

    init_parameter.selected_band=selected_band;
    init_parameter.nb_bands=nb_bands;
    %% 3- Apply the low/high pass filter for you data
    %$ TODO : implement the high and the band pass filter on the frequency initialisation 
    low_pass_filter=0; % 0 no, 1 Yes
    high_pass_filter=0; % 0 no, 1 Yes
    band_pass_filter=0; % 0 no, 1 Yes
    notch_filter=0; % 0 no, 1 Yes
    
    %$ TODO implement the notch filter 
    init_parameter.low_pass_filter=low_pass_filter;
    init_parameter.high_pass_filter=high_pass_filter;
    init_parameter.band_pass_filter=band_pass_filter;
    init_parameter.notch_filter=notch_filter;
    
   
   
    %% 6- List of methods to use for the features extraction 
    % TODO : inverse...
    % $ NOTE:The methods 25 to 35 are reserved to the wavelet transformation, if you
    % want to use theses methods you need to set the "wavelet_transform=1"
    method=[4 5 6 7];
    % Add the computation of the wavelet transformation
    % test if wt_method are included
    wt_method_list=[25:35];% these methods are reserved fot the wavelet and will be completed
    wt_method_used=method(method>=wt_method_list(1) & method<=wt_method_list(end));
    if isempty(wt_method_used)
        % 6b- Compute the wavlette transform parameters (if you use the methods from 25 to 35)
        wavelet_transform=0; % 0 no, 1 Yes
    else
        wavelet_transform=1; % 0 no, 1 Yes
        method=[method,25]; % 25 is added to comput the wavlet transform
    end
    % please refers to the wavlet methods , further methods will be added
    init_parameter.wavelet_transform=wavelet_transform;
%     
%     if wavelet_transform==1
%         method=[method 25 wt_method]; % 25 is the computation of the wavelet transform and the associated methods (from 26 to 35)  
%     end
%     % The new list of method including thoese of the Wavelet transform
    % $ TODO : Find a way to check the desired method to use from the
    % wavlet transform ... 
    method=sort(method);
    method=unique(method);
    nb_method=length(method);
    
    init_parameter.method=method;
    init_parameter.nb_method=nb_method;    
    
    %% 7- Apply filters for the selected method method : Is used in order to define the bands to study
        % '0' not apply  : on the associated rank in the vector
        % '1'  apply     : //                       // 
    % apply_filter=zeros(size(method)); %% TODO : the name should be
    % changed
    apply_filter=ones(size(method));
    % apply_filter=[1 0 1];
    init_parameter.apply_filter=apply_filter;
  
    if length(apply_filter)~=length(method)
        sigma_comment=('The size of "apply_filter" is different from the size of "method"');
        Sigma_comment(init_parameter,sigma_comment)   
        warning('The size of apply_filter is different from the size of method')
        error(' ERROR : The size of "apply_filter" is different from the size of "method"')
    end

    
    %% Three options are possibel for the sampling rate, 
    % 1- sampling_rate_default*=0  The sampling rate will be charged for the data (best option)
    % 2- sampling_rate_default**=1  The sampling rate is fixed at 200 Hz 
    % 3- resample_data=1 : In this case user choose his own sampling rate
    % an the data will be resampled according to the original sampling rate
    % (could be * or **)
    sampling_rate_default=0;  % the default value is fixed to 200 Hz
    resample_data=0; % choose if you want to resample the data, in this case you should fixe the frequency sampling
    
    init_parameter.sampling_rate_default=sampling_rate_default;
    init_parameter.resample_data=resample_data;
    %$ TODO : downsample the data, add here the parameters for downsimpling the data

    
    %% The Machine learning and Classification part :
   
    %% 8- Number of the best features to use from the OFR
    nb_features=50;
    init_parameter.nb_features=nb_features;   
    
    % index of the best feature to display on the scatter plot
    feature_index=[1 2];
    init_parameter.feature_index=feature_index;
    threshold_probe=0.8; % threshold_probe, risk of selecting probes
    init_parameter.threshold_probe=threshold_probe;   
  
    %% 9 - Choice of the ranking Method for the features reduction 
    % $ TODO: ADD the probe code of Fran?ois and PCA implementation +
    % optimisation choice
    % TODO : check the library FS_LIB for the various feature selection and add it here 
    ranking_method_liste={'gram_schmidt','gram_schmidt_probe','relieff','fsv','llcfs','Inf-FS','LaplacianScore','MCFS','udfs','cfs'};
    ranking_method_choice=1; 
    ranking_method=ranking_method_liste{ranking_method_choice};
    init_parameter.ranking_method=ranking_method;
        

    
        %% 10 - Method to use for the Crosse Validation
        %cross_validation_method='LOSO'; % for Leave One Subject Out
        cross_validation_method='LHSO'; % for Leave Half Subject Out 
        %cross_validation_method='LOEO'; % for Leave One Epoch Out
        init_parameter.cross_validation_method=cross_validation_method;
        
        
        %% 11- Method of the Classification : LDA, QDA, SVM, (DTC , MLP ...to be added)
    % TODO : add the others methods
        classification_method='LDA';
        %classification_method='QDA';
        %classification_method='SVM';    
        %classification_method='DTC';  % TODO : for the decision tree classification      
    init_parameter.classification_method=classification_method;    
    init_parameter.remove_individual_features='N';

        
    %% Out put of this script
    % data & subjects
    
%     init_parameter.resample_data=resample_data;
% 
% 
%     % init_parameter.sigma_directory=sigma_directory;   % already declared
%     % init_parameter.data_location=data_location;  
% %     init_parameter.data_output=data_output;           % already declared
% %     init_parameter.subject=subject;   
% %     init_parameter.nb_subject=nb_subject;
%     
%     % signal processing
%     init_parameter.selected_band=selecte_band;
%     init_parameter.nb_bands=nb_bands;
% 
%     init_parameter.method=method; 
%     init_parameter.nb_method=nb_method;
%     init_parameter.apply_filter=apply_filter;
% 
%     init_parameter.wavelet_transform=wavelet_transform;
%     init_parameter.notch_filter=notch_filter;
%     init_parameter.low_pass_filter=low_pass_filter;
%     
    % TODO :  to be implementd
%     init_parameter.high_pass_filter=high_pass_filter;
%     init_parameter.band_pass_filter=band_pass_filter;
%     
%     
%     % Machine learning/classification
%     init_parameter.nb_features=nb_features;   
%     init_parameter.classification_method=classification_method;     
    
%     % The comment, diary and logfile
%     init_parameter.session_name=session_name;
%     init_parameter.sigma_show_comment=sigma_show_comment;
%     init_parameter.sigma_write_logFile=sigma_write_logFile;
%     init_parameter.sigma_write_diaryFile=sigma_write_diaryFile;
%     init_parameter.logFilename=logFilename;
%     init_parameter.diaryFilename=diaryFilename;
    %% Displaying the initializing parameters
if sigma_show_comment==1;
    display('=======================   Informations : Initialisations    ==================')
    display([' 0- Your data are located at the following path : ' training_data_location])
    display([' 1- You have selected the ' num2str(nb_subject) ' folowing subjects : ' num2str(subject)])
    display([' 2- You have selected the ' num2str(nb_bands) ' folowing bands : ' num2str(selected_band)])
    display([' 3- You have selected ' num2str(low_pass_filter) ' for the low pass filter' ])
    display([' 4- You have selected ' num2str(notch_filter) ' for the notch filter' ])
    display([' 5- You have selected ' num2str(wavelet_transform) ' for the wavelet transform (reserved for the methods ' ...
        num2str(wt_method_list(1)) ' to ' num2str(wt_method_list(end)) ') )' ])    
    display([' 6- You have selected the ' num2str(nb_method) ' folowing methods : ' num2str(method)])
    display([' 7- You have selected the ' num2str(apply_filter) ' for applying filters for the methods : ' num2str(method)])
    display([' 8- You have selected  ' num2str(nb_features) ' feature(s) to rank with the OFR' ])
    display([' 9- You have selected  the ' classification_method ' for the classification method' ])
    display('======> Next Step : If you keep the default value You should run this "init_parameter=sigma_frequency_initialisation(init_parameter)" ')
end
    
       
%% Wrinting the message on the Log file
if sigma_write_logFile==1;
   cd(init_parameter.sigma_directory)
        cd(init_parameter.data_output)
        mkdir(init_parameter.session_name)
            cd(init_parameter.session_name)
                logFilename=init_parameter.logFilename;
                fid = fopen(logFilename,'a');
                    fprintf(fid,'\n\n %s',['This is the LogFile for the session of : ' str]);
                    fprintf(fid,'\n ==== Information : sigma_parameter_initialisation   ===');
                    fprintf(fid,'\n %s',['0- Your data are located at the following path : ' training_data_location]);
                    fprintf(fid,'\n %s',['1- You have selected the ' num2str(nb_subject) ' folowing subjects : ' num2str(subject)]);
                    fprintf(fid,'\n %s',['2- You have selected the ' num2str(nb_bands) ' folowing bands : ' num2str(selected_band)]);
                    fprintf(fid,'\n %s',['3- You have selected ' num2str(low_pass_filter) ' for the low pass filter' ]);
                    fprintf(fid,'\n %s',['4- You have selected ' num2str(notch_filter) ' for the notch filter' ]);
                    fprintf(fid,'\n %s',['5- You have selected ' num2str(wavelet_transform) ' for the wavelet transform (reserved for the methods 25 to XX) )' ]) ;   
                    fprintf(fid,'\n %s',['6- You have selected the ' num2str(nb_method) ' folowing methods : ' num2str(method)]);
                    fprintf(fid,'\n %s',['7- You have selected the ' num2str(apply_filter) ' for applying filters for the methods : ' num2str(method)]);
                    fprintf(fid,'\n %s',['8- You have selected  ' num2str(nb_features) ' feature(s) to rank with the OFR' ]);
                    fprintf(fid,'\n %s',['9- You have selected  the ' classification_method ' for the classification method' ]);
                fclose(fid);
   cd(init_parameter.sigma_directory)            
end
    
%% Close the diary file 
diary off
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
% % %   Creation Date : 30/05/2017
% % %   Updates and contributors :
% % %
% % %   Citation: [creator and contributor names], comprehensive BCI
% % %             toolbox, available online 2016.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2016
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------
