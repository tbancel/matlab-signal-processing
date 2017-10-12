function Sigma_display_results(init_parameter,performances_results,features_results)

%% Compute the differentes performances of the selected model

%% Plot the ROC 
display_roc_movies=0; % ROC performances number of features
if display_roc_movies==1
scores=performances_results.scores{2};% negative classe

AUC=nan(1,init_parameter.nb_features);
    figure('color',[1 1 1]);
    grid on; grid minor;
    pause(1/4)
    for nbf=1:init_parameter.nb_features
        [Xa,Ya,~,AUC(nbf),OPTROCPT] = perfcurve(features_results.labels,scores(nbf,:),1);
        plot(Xa,Ya,'r*',0:1,0:1,'g',OPTROCPT(1),OPTROCPT(2),'ks','markersize',15)
        xlabel('False positive rate (FPR)')
        ylabel('True positive rate(TPR)')
        title('ROC for Classification')
        dim = [0.15 0.6 0.6 0.3];
        str =['AUC = ' num2str(100*AUC(nbf),4) '%  for Nb feat = :  ' num2str(nbf) ];
        htxtbox =annotation('textbox',dim,'String',str,'FitBoxToText','on','Tag' , 'somethingUnique');
        pause(1/4)
        delete(findall(gcf,'Tag','somethingUnique'))
    end
    [max_auc, index]=max(AUC);
    [Xa,Ya,~,~,OPTROCPT] = perfcurve(features_results.labels,scores(index,:),1);
    plot(Xa,Ya,'bo',0:1,0:1,'g',1:-0.1:0,0:0.1:1,'y',OPTROCPT(1),OPTROCPT(2),'ks','markersize',15)
    xlabel('False positive rate')
    ylabel('True positive rate')
    title('ROC for Classification')
    dim = [0.3 0.0 0.6 0.3];
    str =['Max AUC = ' num2str(max_auc*100,4) '% for Nb feat = :  ' num2str(index) ];
    htxtbox =annotation('textbox',dim,'String',str,'FitBoxToText','on','Tag' , 'somethingUnique');
end   

plot_best_roc=1;
if plot_best_roc==1
    [max_auc, index]=max(performances_results.performance(:,8));
    scores=performances_results.scores{2};% negative classe
    figure('color',[1 1 1]);
    grid on; grid minor; hold on
    %[max_auc, index]=max(AUC);
    [Xa,Ya,~,~,OPTROCPT] = perfcurve(features_results.labels,scores(index,:),1);
    plot(Xa,Ya,'r*',0:1,0:1,'g',1:-0.1:0,0:0.1:1,'y',OPTROCPT(1),OPTROCPT(2),'ks','markersize',15)
    xlabel('False positive rate')
    ylabel('True positive rate')
    title('ROC for Classification')
    dim = [0.3 0.0 0.6 0.3];
    str =['Max AUC = ' num2str(max_auc*100,4) '% for Nb feat = :  ' num2str(index) ];
    htxtbox =annotation('textbox',dim,'String',str,'FitBoxToText','on','Tag' , 'somethingUnique');
    
    %%% TODO Comput the CutOff Point from the results
end   


%% The Confusion matrix
display_conf_matrix_movie=0; % ROC performances number of features
if display_conf_matrix_movie==1
    for nbf=1:init_parameter.nb_features 
        outputs=Sigma_adapt_label(performances_results.prediction(nbf,:)); % The predition
        targets=Sigma_adapt_label(features_results.labels);% The target, label to predicts
        plotconfusion(targets,outputs)
        pause(1/8)
    end
end    
% Compute the best confusion matrix
comput_best_confusion_matrix=1;
if comput_best_confusion_matrix==1
    [~, index_max_auc]=max(performances_results.performance(:,8));
    [confusion_matrix,~] = confusionmat(features_results.labels,performances_results.prediction(index_max_auc,:));
end

%% Plot the best confusion matrix
plot_best_confusion_matrix=1;
if plot_best_confusion_matrix==1
    [~, index_max_auc]=max(performances_results.performance(:,8));
     outputs=Sigma_adapt_label(performances_results.prediction(index_max_auc,:)); % The predition
     targets=Sigma_adapt_label(features_results.labels);% The target, label to predicts
     figure('color','w');
     plotconfusion(targets,outputs)
     title('Best Confusion Matrix','Fontsize',20)
     xlabel('Target Class ','fontsize',20)
     ylabel('Output Class ','fontsize',20)

     set(findobj(gca,'type','text'),'fontsize',20) 

     %defining my colors
f1=[0 0 139]/255;
f4=[50 205 50]/255;
f9=[236 0 0]/255;
f14=[85 26 139]/255;
%fontsize
set(findobj(gca,'type','text'),'fontsize',20) 
%colors          
set(findobj(gca,'color',[0,102,0]./255),'color',f4)
set(findobj(gca,'color',[102,0,0]./255),'color',f9)
set(findobj(gcf,'facecolor',[120,230,180]./255),'facecolor',f4)
set(findobj(gcf,'facecolor',[230,140,140]./255),'facecolor',f9)
set(findobj(gcf,'facecolor',[0.5,0.5,0.5]),'facecolor',f1)
set(findobj(gcf,'facecolor',[120,150,230]./255),'facecolor',f14)
end
    
   
%%% ch2
%% Plot the best confusion matrix
plot_best_confusion_matrix_2=1;
if plot_best_confusion_matrix_2
[~, index_max_auc]=max(performances_results.performance(:,8));
[confusion_matrix,~] = confusionmat(features_results.labels,performances_results.prediction(index_max_auc,:));
opt=confMatPlot('defaultOpt');
opt.className={'High', 'Low'};
opt.mode='both';
opt.mode='percentage';
opt.format='8.2f';
figure; confMatPlot(confusion_matrix, opt);
end
%%% 3 
predicted_groups=performances_results.prediction(index_max_auc,:);
actual_groups=features_results.labels;
[confusion_matrix, overall_pcc, group_stats, groups_list] = confusionMatrix3d(predicted_groups,actual_groups);
%%% 4 
partest(confusion_matrix)
%% 5
predicted_groups(find(predicted_groups==-1))=0;
x=[actual_groups' predicted_groups'];
[ROCdata,p]=roc(x);
%roc(confusion_matrix)

%% Scatter plot 
feature_index=[1 2]; % the default valuess
Sigma_gscatter_plot(init_parameter,features_results,feature_index)


end