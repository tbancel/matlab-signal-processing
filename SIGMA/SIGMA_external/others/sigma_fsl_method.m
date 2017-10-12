
%% Liste of the ranking methods available in this toolbox: (work with matlab without any extension)
% these methods are available on the FS library
%  Matlab Code-Library for Feature Selection
%  A collection of S-o-A feature selection methods
%  Version 4.2.17 April 2017
%  Support: Giorgio Roffo
%  E-mail: giorgio.roffo@glasgow.ac.uk
% Please refers to this toolbox for more details and the related paper :
% Feature Selection Library (MATLAB Toolbox), Giorgio Roffo


%case 'relieff' %%  OK 
%% Supervised
% Relief-F
[ranking, w] = reliefF( X_train, Y_train, 20);
ranking_relieff=ranking(1:numF);
 
%'fsv'  
[ ranking , w] = fsvFS( X_train, Y_train, numF );
ranking_fsv=ranking(1:numF);


%case 'llcfs'   
% Feature Selection and Kernel Learning for Local Learning-Based Clustering
ranking = llcfs( X_train );
ranking_llcfs=ranking(1:numF);

%% Unsupervised
% Inf-FS 
[ ranking , w] = mutInfFS( X_train, Y_train, numF );
ranking_mutinffs=ranking(1:numF);


%'LaplacianScore'
W = dist(X_train');
W = -W./max(max(W)); % it's a similarity
[lscores] = LaplacianScore(X_train, W);
[junk, ranking] = sort(-lscores);
ranking_laplacian=ranking(1:numF);

% MCFS: Unsupervised Feature Selection for Multi-Cluster Data
options = [];
options.k = 5; %For unsupervised feature selection, you should tune
%this parameter k, the default k is 5.
options.nUseEigenfunction = 4;  %You should tune this parameter.
[FeaIndex,~] = MCFS_p(X_train,numF,options);
ranking = FeaIndex{1};
ranking_mcfs=ranking(1:numF);

%'udfs'  %% OK
% Regularized Discriminative Feature Selection for Unsupervised Learning
nClass = 2;
ranking = UDFS(X_train , nClass ); 
ranking_udfs=ranking(1:numF);


%case 'cfs' %% OK
% BASELINE - Sort features according to pairwise correlations
ranking = cfs(X_train);     
ranking_cfs=ranking(1:numF);


