function best_voted_index=Sigma_election_best_index(index_selected)
%% This function use a system of vote in order to find wich is the best 
% index of the feature to select from a liste od OFR based on cross
% correlation OFR by counting the number of apparition in the best feature
% matrix. The input is the outpu of the OFR for each itteration, The output
% is ranked according to the number of apparition during all the iteration
% index_selected : should be a matrix, the number of the line corespond to
% the number of the best feature selected from the OFR, 
% the number of coulumn should be the number of epochs (example) from the
% data.

% TODO : make a test to ensure that the number of the line corespond to the
% number of the best feature to rank, and the number of column is equal to the number of the epochs... 

%% vote for the best organisation
%index_selected;
% first line : bests indexs
best_voted_index=nan(1,size(index_selected,1));
for ind=1:size(index_selected,1)
    X=index_selected(ind,:);
    enc.val = unique(X);
    enc.rep = histc(X,enc.val);
    mat=[enc.rep' enc.val'];
    mat_sort=sortrows(mat); %% In the case of the same vote the selection is randomaly choosed from the the equal voted
    best_voted_index(ind)=mat_sort(end,2);
end

end