function [o_svm, o_stat] = Sigma_svm_gui(ic_data, ic_label,svm_parameter)

% Adapted version of sigma_svm of François for the SIGMA GUi of Aurélien
% grp1 must be a NxM matrix, where N is the number of trials, and M is the
% number of features
% stat contains error, sen, spe, vecterr
%
%% initializations
if nargin==2
% modifiable hyperparameters
c_kernel = {'linear'; 'quadratic'; 'polynomial'; 'rbf'}; % Type of kernels tested
c_gaussian_value = 0.5:0.5:4; % Gaussian kernel std range %% ONLY for the RBF kernel
c_polynomial_value = 2:5; % Polynomial kernel degree range %% ONLY for Polynomial kernel 
c_constraint = [0.1:0.1:0.5 1 : 5]; % Soft margin hyperparameter range

% stability check variables
c_tolkkt = 5e-2; % KKT tolerance
c_violation = 0.1; % KKT violation level
c_retest = 1; % Number of optimizations for hyperparameters
c_stability_test = 30; % Number of optimizations for the final model
end

if nargin==3
    
    %% tu mets ici
    svm_parameter;
end

% internal variables (not available for modification to the end user)
best_error = 100;
sample_class1 = sum(ic_label == 0);
sample_class2 = sum(ic_label == 1);
total_sample = sample_class1 + sample_class2;
o_svm.number_support = 1e300;

%% leave one out loop
for l_retest = 1 : c_retest,
    for l_constraint = 1 : length(c_constraint),
        disp([ 'Constraint = ', num2str( c_constraint(l_constraint) ) ]);
        for l_kernel = 1 : length(c_kernel),
            if (strcmp(c_kernel{l_kernel}, 'polynomial') == 1)
                condition = length(c_polynomial_value);
            else
                if (strcmp(c_kernel{l_kernel}, 'rbf') == 1)
                    condition = length(c_gaussian_value);
                else
                    condition = 1;
                end
            end
            kernel = c_kernel{l_kernel};
            for l_condition = 1 : condition,
                error = 0;
                spe = 100;
                sen = 0;
                vecterr = zeros(total_sample, 1);
                for l_sample = 1 : total_sample,
                    excluded = ic_data(l_sample,:);
                    train_data = [ ic_data(1 : l_sample-1, :); ...
                        ic_data(l_sample + 1 : total_sample, :) ];
                    label = [ ic_label(1 : l_sample-1); ...
                        ic_label(l_sample + 1 : total_sample) ];
                    if (strcmp(c_kernel{l_kernel}, 'polynomial') == 1)
                        svm_model = svmtrain(train_data, label,...
                            'kernel_function', c_kernel{l_kernel},...
                            'polyorder', c_polynomial_value(l_condition),...
                            'boxconstraint', c_constraint(l_constraint),...
                            'tolkkt', c_tolkkt,...
                            'kktviolationlevel', c_violation);
                    else
                        if (strcmp(c_kernel{l_kernel}, 'rbf') == 1)
                            svm_model = svmtrain(train_data, label,...
                                'kernel_function', c_kernel{l_kernel},...
                                'rbf_sigma', c_gaussian_value(l_condition),...
                                'boxconstraint', c_constraint(l_constraint),...
                                'tolkkt', c_tolkkt,...
                                'kktviolationlevel', c_violation);
                        else
                            svm_model = svmtrain(train_data, label,...
                                'kernel_function', c_kernel{l_kernel},...
                                'boxconstraint', c_constraint(l_constraint),...
                                'tolkkt', c_tolkkt,...
                                'kktviolationlevel', c_violation);
                        end
                    end
                    class = svmclassify(svm_model, excluded);
                    %     class
                    if l_sample <= sample_class1
                        error = error + class;
                        vecterr(l_sample) = class;
                        spe = spe - 100 * class / sample_class1;
                    else
                        error = error + 1 - class;
                        vecterr(l_sample) = 1 - class;
                        sen = sen + class * 100 / sample_class2;
                    end;
                end;
                error = 100 * error / total_sample;
                if (error < best_error),%max(sen,spe) < best_error,% & ...
                    %(length(svm_model.Alpha) <= o_svm.number_support)
                    o_stat.error = error;
                    best_error = error;%max(sen,spe);%
                    o_stat.sen = sen;
                    o_stat.spe = spe;
                    o_stat.vecterr = vecterr;
                    o_svm.kernel = c_kernel{l_kernel};
                    o_svm.number_support = length(svm_model.Alpha);
                    o_svm.constraint = c_constraint(l_constraint);
                    if (strcmp(c_kernel{l_kernel}, 'polynomial') == 1)
                        o_svm.order = c_polynomial_value(l_condition);
                    else
                        if (strcmp(c_kernel{l_kernel}, 'rbf') == 1)
                            o_svm.sigma = c_gaussian_value(l_condition);
                        end
                    end
                end
            end
        end
    end
end
min_difference = 100;
for l_stability = 1 : c_stability_test,    
    if (strcmp(o_svm.kernel, 'polynomial') == 1)
        svm = svmtrain(ic_data, ic_label,...
            'kernel_function', o_svm.kernel,...
            'polyorder', o_svm.order,...
            'boxconstraint', o_svm.constraint);
    else
        if (strcmp(o_svm.kernel, 'rbf') == 1)
            svm = svmtrain(ic_data, ic_label,...
                'kernel_function', o_svm.kernel,...
                'rbf_sigma', o_svm.sigma,...
                'boxconstraint', o_svm.constraint);
        else
            svm = svmtrain(ic_data, ic_label,...
                'kernel_function', o_svm.kernel,...
                'boxconstraint', o_svm.constraint);
        end
    end
    out = svmclassify(svm, ic_data);
    error = 100 * sum(abs(out - ic_label)) ./ length(ic_label);
    if abs(error - o_stat.error) < min_difference,
        o_svm.svm = svm;
        o_svm.replicate_error = error;
    end
end