function Sigma_3DScatterPlot(init_parameter,init_method,features_results)

% The hyper plan should be added from the classification method

data_in.features_results=features_results;
data_in.init_parameter=init_parameter;
data_in.init_method=init_method;


clickA3DPoint(data_in)

end