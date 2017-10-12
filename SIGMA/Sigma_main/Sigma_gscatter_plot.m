function Sigma_gscatter_plot(init_parameter,features_results,feature_index)
% function Sigma_gscatter_plot(init_parameter,features_results,feature_index)
% function Sigma_gscatter_plot(classification_method,features_results,feature_index)

% This function plot the scater plot with two groups, it divide the plan
% into two parts according to the method of classification LDA, QDA and SVM
% 
% Inputs : 
% init_parameter : should be a structure containing the classification
%   method, if it's not a structure, it should be the name of the
%   classification method
% features_results : structure of the feature of the Sigma, it must contain
%   the matrix of the best feature or at least the o_feature matrix, 
%   if it's not a structure it's must be the feature matrix
% feature_index : containe the two index of the feature to plot (dimension of the plot figure)
% The output is the figure of the scatter plot into groupes 
%%

%% Visualisation of th scatter plot accordinf to two features ...
%% Initialisation
if nargin==2
    feature_index=[1 2];
end
if length(feature_index)>2
    warning('SIGMA>> the length of feature_index must be ==2 ')
    error('SIGMA>> This function support only two features')
end

%%% get the name of the classification method
if isstruct(init_parameter)
    classification_method=init_parameter.classification_method;
else
    classification_method=init_parameter; % in this case init_parameter is just the classification methode either LDA or QDA
end

%%% Get the feature matrix
ind1=feature_index(1);
ind2=feature_index(2);

if isstruct(features_results)
    if isfield(features_results,'o_best_features_matrix')
        SL0 = features_results.o_best_features_matrix(ind1,:);
        SW0 = features_results.o_best_features_matrix(ind2,:);
    else
        SL0 = features_results.o_features_matrix(ind1,:);
        SW0 = features_results.o_features_matrix(ind2,:);
    end
else % in this case the input is the feature matrix/ or the best feature matrix
        SL0 = features_results(ind1,:); 
        SW0 = features_results(ind2,:);
end
 
%% Get the labels or the two classes

group0 =features_results.labels;
group0=group0(:);
% label_matrix=Sigma_adapt_label(group0)
%[~, new_labels]=Sigma_set_labels(group0);
%group0=new_labels;
classes=unique(group0);

 if (strcmp(classification_method,'LDA') || strcmp(classification_method,'QDA'))

    %% Visualisation of the results
    figure('color','w');
    h10 = gscatter(SL0,SW0,group0,'rb','v^',[],'off');
    set(h10,'LineWidth',2)
     if ischar(class(classes(1)))
%      h=legend(['Class  ' (classes{1})],['Class  ' (classes{2})],'Location','NW');
%      else
     h=legend(['Class  ' num2str(classes(1))],['Class  ' num2str(classes(2))'],'Location','NW');
     end
     h.FontSize=20;
    %% Trace grid 
    xdata=h10.XData;
    ydata=h10.YData;
    %[X0,Y0] = meshgrid(linspace(min(xdata),max(xdata),length(SW0)),linspace(min(ydata),max(ydata),length(SW0)));
    [X0,Y0] = meshgrid(linspace(min(xdata),max(xdata)),linspace(min(ydata),max(ydata)));
    X0 = X0(:); Y0 = Y0(:);

    if classification_method=='QDA'     
        %[C0,err0,P0,logp0,coeff0] = classify([X0 Y0],[SL0' SW0'],group0','Quadratic');
        [C0,~,~,~,coeff0] = classify([X0 Y0],[SL0' SW0'],group0','Quadratic');
        % get the coefficient 
        K0 = coeff0(1,2).const;
        L0 = coeff0(1,2).linear;
        Q0 = coeff0(1,2).quadratic;
    % Function to compute K + L*v + v'*Q*v for multiple vectors
    % v=[x;y]. Accepts x and y as scalars or column vectors.
    f = @(x,y) K0 + [x y]*L0 + sum(([x y]*Q0) .* [x y], 2);   
    elseif classification_method=='LDA'       
        %[C0,err0,P0,logp0,coeff0] = classify([X0 Y0],[SL0' SW0'],group0','linear ');
        [C0,~,~,~,coeff0]= classify([X0 Y0],[SL0' SW0'],group0','linear ');
        % get the coefficient 
        K0 = coeff0(1,2).const;
        L0 = coeff0(1,2).linear;
        Q0 = 0;    
    % Function to compute K + L*v + v'*Q*v for multiple vectors
    % v=[x;y]. Accepts x and y as scalars or column vectors.
    f = @(x,y) K0 + [x y]*L0 + sum(([x y]*Q0) .* [x y], 2);   
    end

    hold on;
    gscatter(X0,Y0,C0,'rb','.',1,'off');
    h2 = ezplot(f,[min(xdata) max(xdata) min(ydata),max(ydata)]);
    set(h2,'Color','m','LineWidth',2)
    axis([min(xdata) max(xdata) min(ydata),max(ydata)])
    xlabel('feature N°1','fontsize',15)
    ylabel('feature N°2','fontsize',15)
    title(['{\bf Classification Data with ' classification_method  '}'],'fontsize',20)         

 end % end if LDA & QDA

 
 if classification_method=='SVM'       
        %svmStruct =    svmtrain([SL0' SW0' ],group0','showplot',true);        
        %Train the SVM Classifier
        data3=[SL0' SW0' ];
        cl = fitcsvm(data3,group0','KernelFunction','rbf','BoxConstraint',Inf,'ClassNames',classes);
%        cl = fitcsvm(data3,group0','KernelFunction','polynomial','BoxConstraint',10,'ClassNames',classes);

       % figure;
        h(1:2) = gscatter(data3(:,1),data3(:,2),group0,'rb','v^',[],'off');
        %% Trace grid 
        xdata=h(1:2).XData;
        ydata=h(1:2).YData;        
        [x1Grid,x2Grid]=meshgrid(linspace(min(xdata),max(xdata)),linspace(min(ydata),max(ydata)));
        xGrid = [x1Grid(:),x2Grid(:)];
        [c00,scores] = predict(cl,xGrid);         
        set(h(1:2),'LineWidth',2);
        hold on
        h(3) = plot(data3(cl.IsSupportVector,1),data3(cl.IsSupportVector,2),'ko');
        if ischar(class(classes(1)))
%         h=legend(h,{['Class  ' (classes{1})],['Class  ' (classes{2})], 'Support Vectors'},'Location','NW');
%         else
        h=legend(h,{['Class  ' num2str(classes(1))],['Class  ' num2str(classes(2))], 'Support Vectors'},'Location','NW');
        end
        h.FontSize=20;
        hold on;
        gscatter(x1Grid(:),x2Grid(:),c00,'rb','.',1,'off');    
        contour(x1Grid,x2Grid,reshape(scores(:,2),size(x1Grid)),[0 0],'m','LineWidth',2);
        axis([min(xdata) max(xdata) min(ydata),max(ydata)])
        xlabel('feature N°1','fontsize',15)
        ylabel('feature N°2','fontsize',15)
        title(['{\bf Classification Data with ' classification_method  '}'],'fontsize',20)
        hold off       
 end
 
end

