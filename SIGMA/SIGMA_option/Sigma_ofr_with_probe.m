function ranking_selected = Sigma_ofr_with_probe(ic_feature, ic_output, ic_threshold)
%%%------------------------------------------------------------------------
% function sigma_ofr(ic_feature, ic_output, ic_threshold)
%
%   Function task:
%   This function  ranks the features for machine learning
%   Uses Gram-Schmidt Orthogonalization and probe variables
%
%   Inputs
%       'ic_feature' is a 2D matrix M x N, with N the number of features 
%       and M the number of samples.
%       'ic_output' is a vector with numerical labels corresponding to the
%       different output labels, with dimension M x 1, with M the number of
%       samples in ic_feature.
%       'ic_threshold' is the probability risk threshold (risk of selecting
%       probes, or in other words risk of selecting features whose
%       information is not better than random noise).
%
%   Outputs 
%       'ranking_selected' is the OFR ranking, stored as an K x 2 vector,
%       where K is the number of selected features, column one is the
%       feature index, and column 2 is the feature cosine score in the
%       orthogonalized subspace where is has been extracted from.
%
%   Used global variables
%       g_verbose
%
%--------------------------------------------------------------------------
%
%   Sections :
%       Section 1 - Initializations
%       Section 2 - OFR
%
%   Main Variables
%       None
%
%   Dependencies
%       Initialize_environment should be runed before launching this code
%       Update_log
%
%   NB: this code is copyrighted. 
%   Please refer to copyright info in the file footer.
%%%------------------------------------------------------------------------
%% Section 1 - Initializations
% Initializing base variables
global g_verbose;
if (g_verbose == 1)
    disp(['Entering sigma_OFR, ranking features until ',...
        num2str(ic_threshold), '% risk threshold is met']);
end

% Update_log('Entering sigma_OFR');

number_sample = size(ic_feature,1);
number_feature = size(ic_feature,2);

%number_probe = 10;%max(number_feature, 100);
% number_probe = max(number_feature, 100);
number_probe = round(number_feature/2);


%number_selected = 0;
number_probe_ranked = 0;

indexing = 1 : number_feature + number_probe;
ranking_selected = [];

% Normalization of the inputs
normalized_feature0 = ic_feature - repmat(mean(ic_feature, 1), number_sample, 1);
normalized_feature = normalized_feature0 ./repmat(sqrt(sum(normalized_feature0.^2,1)), number_sample, 1);

output_vector = ic_output / (norm(ic_output)); %% bizaare non ?pkoi normalis
%output_vector=ic_output;
%% Section 2 - OFR
%%% Executing the Gram-Schimdt function number_probe times with one probe
%%% Créating the big matrix of feature with added probe
feature_probe = [normalized_feature, randn(size(ic_feature,1),number_probe)];

selecting = 1; % to come-in the OFR
step = 1; % balayer l'ensemble des features probe
number_pass = 1;

while selecting == 1,
    % Calculation of the correlation between the output and the
    % (remaining) features
    square_cosine = [];
    for feature = step : number_feature + number_probe,
        vector_value = feature_probe(:,feature)';
        numerator = (vector_value * output_vector)^2;
        denominator = (vector_value * vector_value' ...
            * output_vector' * output_vector);
        square_cosine(feature) = numerator / denominator;
    end
    [value, index] = max(square_cosine) ; %% The index selected is the max of the cos²
    max_cos=value^1/2;
    %%% Best feature is placed in first column of the matrix if the
    %%% folowin condition is OK
    if index <= number_feature,
        
        feature_probe(:, [step index]) = feature_probe(:, [index step]);
        if (max_cos > 0)
            indexing([step index]) = indexing([index step]);
        end
        
        
        % Gram-Schmidt orthogonalization
        ranked = feature_probe(:,step); 

        for feature = step + 1 : number_feature + number_probe,
            vector = feature_probe(:,feature)';
            feature_probe(:,feature) = vector - ((ranked' * vector') ...
                / (ranked' * ranked)) * ranked';
        end
        output_vector = output_vector - ((ranked' * output_vector) ...
            / (ranked' * ranked)) * ranked;
        %step = step + 1;
    end
    
    number_pass = number_pass + 1; %% $$ pkoi ici 
    % stop condition
    
    if index > number_feature,
        % if a probe was selected
        number_probe_ranked = number_probe_ranked + 1;
        %step = step + 1;
    else
        item = [indexing(step) max_cos]; % changed from [indexing(step) value]
        ranking_selected = [ranking_selected; item];
        step = step + 1;
    end
    
    % Test if the thershold is reachead
    if (number_pass > number_sample) || (number_pass > number_feature) || ...
            (number_probe_ranked / number_probe > ic_threshold)
        selecting = 0;
    end
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
% % %   File created by F.-B. Vialatte
% % %   Creation Date : 28/04/2017
% % %   Updates and contributors :
% % %       16/03/2017 G. Dreyfus drafted the pseudocode for this function
% % %       28/04/2017 F.B. Vialatte created the first version of this code
% % %       19/06/2017 T. MEDANI correction on the implementation (get the right ranking) 
% % %
% % %   Citation: [creator and contributor names], SigmaBOX, available 
% % %   online 2017.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2017
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------
