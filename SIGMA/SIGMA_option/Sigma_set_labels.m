function [origin_labels, new_labels]=Sigma_set_labels(labels)
% This function transforms the lables of epochs to -1 and 1, 

%% Set the labels to "-1" and "1"
origin_labels=labels;%labels=origin_labels
temp=labels;
temp=unique(temp);
if length(temp)==2
%% TODO : use also labels as char not only numbers! DONE ?
      %class_label= class(temp)
%      if strcmp(class_label,'cell')
    if iscell(temp)
        ind1=(find(strcmp(labels,temp(1))));
        ind2=(find(strcmp(labels,temp(2))));

        x(ind1)=-1;
        x(ind2)=1;
        labels=x;
    else
        labels(labels==temp(1))=-1;
        labels(labels==temp(2))=1;
    end
else
    error('SIGMA MESSAGE : There is more than 2 labels, this version is not addapted for your data ...')
end

new_labels=labels;

end