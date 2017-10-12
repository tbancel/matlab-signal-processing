function [performance,performance_infos]=Sigma_compute_performance(origine_label,predicted_label,scores)

% Inputs : 
% origine_label : the origine labels of the example, idealy 1 and -1 
% predicted_label : the predicted labels
% scores : the scores of the prediction of the positif label (1), 
% this value comes from the predict matlab function


% OUTPUTS : 
% -results : matrix contaning the differents measure of classification,
% the size of this matrix is NxR, where N is the number of the feature to
% rank, R is the number of measures computed in this script 
% -results_infos : contain the name of measured output, for now it comput
% th following measures :
% results_infos={'Auc','Accuracy', 'Sensitivity', 'Specificity', 'Precision', 'Recall', 'F-Measure', 'G-mean' };
% Where : 
% -Auc : Area under the curve : 
% accuracy = (tp+tn)/N;
% sensitivity = tp_rate;
% specificity = tn_rate;
% precision = tp/(tp+fp);
% recall = sensitivity;
% f_measure = 2*((precision*recall)/(precision + recall));
% gmean = sqrt(tp_rate*tn_rate);

% p = length of the positif example
% n = length of the negatif example
% N = p+n;
% 
% tp = sum(ACTUAL(idx)==PREDICTED(idx)); % number of the true positif
% tn = sum(ACTUAL(~idx)==PREDICTED(~idx)); %% number of the true negatif
% fp = n-tn;% number of the false positif
% fn = p-tp;% number of the false negatif
% 
% tp_rate = tp/p;
% tn_rate = tn/n;
 
labels=origine_label;
prediction=predicted_label;
maxFeatNum=size(prediction,1);

evaluation=nan(maxFeatNum,7);

if nargin==3
    auc = nan(1,maxFeatNum);
end

for feat = 1:maxFeatNum
    evaluation(feat,:) = Evaluate(labels,prediction(feat,:));
    performance=evaluation;
    if nargin==3
        [~,~,~,auc(feat)] = perfcurve(labels,scores(feat,:),1);
        performance=[performance auc'];
    end    
end
    performance_infos={'Accuracy', 'Sensitivity', 'Specificity', 'Precision', 'Recall', 'F-Measure', 'G-mean' };
    if nargin==3
        performance_infos={'Accuracy', 'Sensitivity', 'Specificity', 'Precision', 'Recall', 'F-Measure', 'G-mean','Auc'};
    end    
end


