%function h = clickA3DPoint(pointCloud,labels)
function h = clickA3DPoint(data_in)

%CLICKA3DPOINT
%   H = CLICKA3DPOINT(POINTCLOUD) shows a 3D point cloud and lets the user
%   select points by clicking on them. The selected point is highlighted 
%   and its index in the point cloud will is printed on the screen. 
%   POINTCLOUD should be a 3*N matrix, represending N 3D points. 
%   Handle to the figure is returned.
%
%   other functions required:
%       CALLBACKCLICK3DPOINT  mouse click callback function
%       ROWNORM returns norms of each row of a matrix
%       
%   To test this function ... 
%       pointCloud = rand(3,100)*100;
%       h = clickA3DPoint(pointCloud);
% 
%       now rotate or move the point cloud and try it again.
%       (on the figure View menu, turn the Camera Toolbar on, ...)
%
%   To turn off the callback ...
%       set(h, 'WindowButtonDownFcn',''); 
%
%   by Babak Taati
%   http://rcvlab.ece.queensu.ca/~taatib
%   Robotics and Computer Vision Laboratory (RCVLab)
%   Queen's University
%   May 4, 2005 
%   revised Oct 30, 2007
%   revised May 19, 2009

% Get the data from here

features_results=data_in.features_results;

o_best_features_matrix=features_results.o_best_features_matrix;
labels=features_results.labels;
feat_3D=o_best_features_matrix(1:3,:);
pointCloud=feat_3D;


if nargin ~= 1
    error('Requires 1 input arguments.')
end

if size(pointCloud, 1)~=3
    error('Input point cloud must be a 3*N matrix.');
end

% show the point cloud
h = gcf;
%pointCloud;
f1=pointCloud(1,:);
f2=pointCloud(2,:);
f3=pointCloud(3,:);


two_lables=unique(labels);
index_un=find(labels==two_lables(1));
index_deux=find(labels==two_lables(2));

%plot3(pointCloud(1,:), pointCloud(2,:), pointCloud(3,:), 'ro'); 

plot3(f1(1,index_un), f2(index_un), f3(index_un), 'ro','MarkerSize', 10); 
hold on;
plot3(f1(index_deux), f2(index_deux), f3(index_deux), 'bs','MarkerSize', 10); 
xlabel('Best Feature N°:1','FontSize',10);
ylabel('Best Feature N°:2','FontSize',10);
zlabel('Best Feature N°:3','FontSize',10);
grid on; grid minor;
legend({['class 1 (' num2str(two_lables(1)) ')' ],['class 2 (' num2str(two_lables(2)) ')']},'FontSize',20);
title('3D Scatter Plot using the 3 best features')


cameratoolbar('Show'); % show the camera toolbar
hold on; % so we can highlight clicked points without clearing the figure

% set the callback, pass pointCloud to the callback function
%set(h, 'WindowButtonDownFcn', {@callbackClickA3DPoint, pointCloud,h}) 
set(h, 'WindowButtonDownFcn', {@callbackClickA3DPoint, data_in,h}) 
