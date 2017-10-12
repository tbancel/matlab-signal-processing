%% Sigma test the performance of the selected variables
% refers to this page : https://fr.mathworks.com/help/stats/examples/selecting-features-for-classifying-high-dimensional-data.html
dataTrain =features_results.o_features_matrix;
grpTrain =features_results.labels;

dataTrainG1 = dataTrain(:,grp2idx(grpTrain)==1);
dataTrainG2 = dataTrain(:,grp2idx(grpTrain)==2);

dim_data=min(size(dataTrainG1,2),size(dataTrainG2,2));

[h,p,ci,stat] = ttest2(dataTrainG1(:,1:dim_data),dataTrainG2(:,1:dim_data),'Vartype','unequal');

[f,x] = ecdf(p);
ecdf(p);
xlabel('P value');
ylabel('CDF value')


%% Remarques :
% There are about 35% of features having p-values close to zero and over 50%
% of features having p-values smaller than 0.05, meaning there are more than
% 2500 features among the original 5000 features that have strong discrimination
% power. One can sort these features according to their p-values (or the absolute
% values of the t-statistic) and select some features from the sorted list.
% However, it is usually difficult to decide how many features are needed unless
% one has some domain knowledge or the maximum number of features that can be
% considered has been dictated in advance based on outside constraints.