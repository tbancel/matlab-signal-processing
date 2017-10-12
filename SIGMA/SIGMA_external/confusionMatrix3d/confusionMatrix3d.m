function [confusion_matrix overall_pcc group_stats groups_list] = confusionMatrix3d(predicted_groups,actual_groups,plot_fig)
% confusionMatrix3d
%% %% if (nargin==2) a 3D plot of the confusion matrix will be displayed, else nothing
% version 1.2 (April 2012)
% (c) Brian Weidenbaum
% website: http://www.BrianWeidenbaum.com/.
% Special thanks to the Department of Marketing at Universiteit Gent:
% http://www.feb.ugent.be/MarEco/ENG/.
%
% 
% DESCRIPTION: 
% Confusion matrix-based model performance summary tool.
% Works with character and numeric data, for any number of groups.
% 
% Displays your confusion matrix as a 3D bar chart of your observations, 
% broken down by their actual and predicted groups.
% 
% Takes into account the chance that your predicted and actual groups may
% contain some mutually exclusive groups/classes. 
% Assumes that union(predicted and actual_groups) contains all
% possibilities for Groups.  
% 
% Returns the overall PCC and the following stats per group: 
% True Positives, False Positives, True Negatives, False Negatives, 
% Sensitivity, Specificity, PCC.
% 
% 
% OUTPUT: 
% 1) a 3D Bar Chart of the number of observations per group predicted as
% each group (helps you visualize the performance of your model in
% predicting each of several groups).  X and Y tick labels are the
% names (char or numeric) of your predicted and actual groups in ascending
% alphanumeric order (the same order in the groups_list variable). 
% 
% 2) confusion_matrix (matrix of doubles): the counts underlying the 3D Bar
% Chart confusion matrix, where columns are different predicted groups, in
% ascending alphanumeric order, and rows are different actual groups, in
% ascending alphanumeric order (the same order in the groups_list variable)
% 
% 3) overall_pcc (double): the overall Percent Correctly Classified in your data
% 
% 4) group_stats (cell array of structs), where each struct contains:
%       group -- the name of the group for the current stat struct
%       TP, FP, FN,TN  -- True&False Positives&Negatives for the group
%       sensitivity -- TP/(TP+FN) for the group
%       specificity -- TN/(TN+FP) for the group
%       PCC -- (TP+TN)/(TP+TN+FP+FN) for the group
% the cell array's structs are arranged in alphanumeric order of
% group names.
% 
% 5) groups_list (cell array of chars or vector): the names of groups in
% alphanumeric order, the same order as they appear on the Confusion Matrix
% 3D Bar Chart and in the group_stats cell array.
% 
% INPUTS
% parameter_name (datatype)-- description
% 1) predicted_groups (vector of numeric/logicals, or cell array of chars)--
% The group for each observation, as predicted by your model.  If you are
% using a logistic regression model, you need to translate the predicted
% logit scores/ probabilities into groups, based on your own cutoff
% value(s), and then feed those groups into this function.
% 
% 2) actual_groups (vector of numeric/logicals, or cell array of chars)--
% The group for each observation, based on your actual data. 
% 
% Note: if one of these two inputs is a cell array of chars, both need to
% be cell arrays of chars.  
% 
%
% Changes between versions 1.1 and 1.2
% Revised formulas for sensitivity and specificity to reflect http://en.wikipedia.org/wiki/Sensitivity_and_specificity 
%

    % PHASE 1: INPUT VALIDATION    
    
    %force both vectors to be column vectors
    predicted_groups = reshape(predicted_groups,length(predicted_groups),1);
    actual_groups=reshape(actual_groups,length(actual_groups),1);
    
    %check equal length for each vector
    if ~(length(predicted_groups)==length(actual_groups))
       error('Both input vectors must be the same length.'); 
    end
    
    %check for equal types within the vectors; 
    %eg both must be cell array of chars or vectors/cell arrays of numbers
    %if pred=cell, and everything in it is char,
    if iscell(predicted_groups) && all(cellfun('isclass',predicted_groups,'char'))
        %actual must be a cell array of all chars...
        %if act<>(cell with all elements=char)
        if ~(iscell(actual_groups) && all(cellfun('isclass',actual_groups,'char')))
            error('If one of your input vectors is a cell array of characters, so must be the other one.');            
        end
    %elsif pred=cell, and not everything in it is a char, it should be all numbers
    elseif iscell(predicted_groups) && ~all(cellfun('isclass',predicted_groups,'char'))
        try
           predicted_groups=cell2mat(predicted_groups);
        catch e
           disp(e.message); 
        end
    end
    
    %do same for actual_groups vector
    if iscell(actual_groups) &&  all(cellfun('isclass',actual_groups,'char'))
        if ~(iscell(predicted_groups) && all(cellfun('isclass',predicted_groups,'char')))
            error('If one of your input vectors is a cell array of characters, so must be the other one.');            
        end
    elseif iscell(actual_groups) && ~all(cellfun('isclass',actual_groups,'char'))
        try
           actual_groups=cell2mat(actual_groups);
        catch e
           disp(e.message); 
        end
    end
    
    %END INPUT VALIDATION
    
    
    %PHASE 2: CREATE AND PLOT 3D CONFUSION MATRIX
    n_obs = size(predicted_groups,1);
    groups_list = union(actual_groups,predicted_groups);    
    ngroups = length(groups_list);
    
    %now translate all predicted and actual groups to one of 1:N, where n=length groups list 
    %eg if groupslist = 'a', 'b', 'c', groupnbrs = 1:3, 
%     and the following data: 'a', 'a', 'c','b'=> 1 1 3 2
    if iscell(groups_list)
       acts = cellfun(@(x)find(strcmp(x,groups_list)),actual_groups);
       preds = cellfun(@(x)find(strcmp(x,groups_list)),predicted_groups);
    else
        acts = arrayfun(@(x)find(x==groups_list),actual_groups);
        preds = arrayfun(@(x)find(x==groups_list),predicted_groups);
    end
    
    %fill confusion matrix with counts
    confusion_matrix=zeros(ngroups);
    for i=1:n_obs
        predicted= preds(i);
        actual=acts(i);        
        confusion_matrix(actual,predicted)=confusion_matrix(actual,predicted)+1;
    end
    
    
    %now get TN, TP, FP, FN per class
    group_stats = cell(1,ngroups);
    cols = 1:ngroups; rows= 1:ngroups;
    overall_pcc= 0;    
    for class=1:ngroups
        if iscell(groups_list)
           stats.group = groups_list{class}; 
        else
           stats.group = groups_list(class);
        end
        stats.TP = confusion_matrix(class,class);
        stats.TN = sum(sum(confusion_matrix(rows(rows~=class),cols(cols~=class))));
        stats.FP = sum(sum(confusion_matrix(rows(rows~=class),cols(cols==class))));
        stats.FN = sum(sum(confusion_matrix(rows(rows==class),cols(cols~=class))));
       stats.sensitivity = stats.TP / (stats.TP+stats.FN);
       stats.specificity = stats.TN / (stats.TN+stats.FP);
       stats.PCC = (stats.TP+stats.TN) / (stats.TN+stats.FN+stats.TP+stats.FP);
       overall_pcc = overall_pcc+stats.PCC;
        group_stats{class}=stats;
    end
    %overall pcc is the average pcc of all groups
    overall_pcc =overall_pcc/ngroups;
    
    %bar chart
    if (nargin==2)
        bar3(confusion_matrix);
        % x vals are the columns of confusion, ys are the rows of confusion
        set(gca,'YTickLabel',groups_list);
        set(gca,'XTickLabel',groups_list);
        ylabel('Actual Group');
        xlabel('Predicted Group');
        zlabel('Number of Observations');
        title({'Observations by Predicted and Actual Groups'; ['Overall PCC: ' num2str(overall_pcc*100) '%']},'fontsize',14);
    end
%     PHASE 3: PROFIT
end%fx