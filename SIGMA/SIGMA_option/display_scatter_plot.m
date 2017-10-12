%% 00- Load an existing session
%clc;clear all; close all;
%%% Load a specified session :
% session_name='Session_21-Jun-2017_193439';
% Script_load_session





%% Visualisation of th scatter plot accordinf to two features ...

if init_parameter.classification_method=='LDA' || init_parameter.classification_method== 'QDA'

    SL0 =features_results.o_best_features_matrix(1,:);
    SW0 = features_results.o_best_features_matrix(2,:);
    group0 =features_results.labels;
group0=group0(:);
    figure;
    h10 = gscatter(SL0,SW0,group0,'rb','v^',[],'off');
    set(h10,'LineWidth',2)
    legend('Classe 1','Classe 2','Location','NW')

    %% Trace grid 
    xdata=h10.XData;
    ydata=h10.YData;
    %[X0,Y0] = meshgrid(linspace(min(xdata),max(xdata),length(SW0)),linspace(min(ydata),max(ydata),length(SW0)));
    [X0,Y0] = meshgrid(linspace(min(xdata),max(xdata)),linspace(min(ydata),max(ydata)));
    X0 = X0(:); Y0 = Y0(:);

    if init_parameter.classification_method=='QDA'     
        [C0,err0,P0,logp0,coeff0] = classify([X0 Y0],[SL0' SW0'],group0','Quadratic');
        % get the coefficient 
        K0 = coeff0(1,2).const;
        L0 = coeff0(1,2).linear;
        Q0 = coeff0(1,2).quadratic;
    % Function to compute K + L*v + v'*Q*v for multiple vectors
    % v=[x;y]. Accepts x and y as scalars or column vectors.
    f = @(x,y) K0 + [x y]*L0 + sum(([x y]*Q0) .* [x y], 2);   
    elseif init_parameter.classification_method=='LDA'       
        [C0,err0,P0,logp0,coeff0] = classify([X0 Y0],[SL0' SW0'],group0','linear ');
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
    xlabel('Best feature N°1')
    ylabel('Best feature N°2')
    title('{\bf Classification Data}')

end