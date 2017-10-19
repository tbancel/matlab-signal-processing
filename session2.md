# Session 2: Feature extraction

## Feature matrix calculation and extraction

For example, we load 3 subjects (subject 1, subject 2 & subject 3), select 4 bands (Delta: [0.1Hz 4Hz], Theta [4Hz 8Hz], Mu [8Hz 12Hz] and Beta [12Hz 32Hz], fyi: changing the interval is bugged) and calculate 3 features (time_mean, time_energy, time_kurtosis).

To compute using the GUI, we click on `Compute features`, which logs a few interesting information in the console.

```matlab
=======================    New Subject     =======================
Loading the EEG data : Subject N°:01...
===================    Features extraction     =====================
The total number of epochs is:14
===================    Features extraction     =====================
Subject N°: 01| [ subject 01/03]
Epochs N°: 01/14
Method N°: 04 | [ method : 01 / 03]
Method name: time_mean
Compute the feature of the current method...
execute as a function
```

```matlab
=======================   Informations    ==================
The features matrix has the right dimension
The dimension of the feature matrix is : 192   24
The list of subject is : 1  2  3
The number of subject is : 3
The number of epochs of each subject is : 14   1   9
The total number of epochs is : 24
The list of the used method(s) is : 4  5  6
The total number of method(s) is : 3
The filters vector is  : 1  1  1
The filters are applied for the methods : 4  5  6
The total number of appliyed filter is : 3
The selected band(s)\n :
      Delta     : [0.1 4] Hz
      Theta     : [4 8] Hz
      Mu        : [8 12] Hz
      Beta      : [16 32] Hz
 
The total number of bands is : 4
The total number of channels is : 16
The total number of features is : 192
The used methods for features are: 
          time_mean
          time_energy
          time_kurtosis
```


To understand how the time_mean is calculated, the file is located in `SIGMA_functions > features_extraction > Time_mean.m`, in this case, it is simply the mean of the signal over all the epoch. The result is store in the variable `features_results.o_time_mean` which we can access later by clicking on `"See & Export Workspace". o_time_mean is indeed a 64x24 matrix (actually inverted from what is shown on the slides) because there are in total 24 epochs (subject 1 has 14 epochs, subject 2 has 1 and subject has 9, 14+9+1=24) and 64 lines because there are 16 channels and 4 bands (therefore 16x4=64 calculations of the time_mean). By reading the code, we understand that the first 4 lines are actually the calculation of the time mean for the channel 1 over the 4 bands (again different from how it is presented in the slides :@ !!).

In the variable `features_results.o_features_matrix_normalized`, the number of rows is 64x3=192 (64 calculations per feature and 3 features) and still 24 columns (because 24 epochs).


## Best feature selection

We then extract among the 192 features the best ones, either by ranking them (the ones that are most separating the labels) or using the OFR technique (which basically generates a bunch of noisy features and rank the noisy features and the computed features, and select the XX first computed features so that the total amount of noisy features ranked better do not exceed XX % of the total of the computed features).

The OFR ranking with 10% risk gives us 5 best features (cf Figure 1), the first one is the mean of the band 2 (Theta band) on channel 6. We can see on Figure 2, that after rotating the scatter plot (on the first 3 best features) we can well seperate the 2 classes (dizzy / concentrated), which means that our features may be able to predict well.

## Classification

Unfortunately, when running `"Compute classification", the feature reduction induces errors (cf. figure 4). This is a HARD BLOCKER for the rest of the assignment.

The error message is the following:

```matlab
You are runing the LOEO method for training your model ... 
You have selected the : gram_schmidt with LDA....
SIGMA>> You have selected the "gram_schmidt"  method
SIGMA>> You have selected the "gram_schmidt"  method
SIGMA>> You have selected the "gram_schmidt"  method
SIGMA>> You have selected the "gram_schmidt"  method
Index exceeds matrix dimensions.

Error in Sigma_cross_validation_lhso (line 122)
            scores_nc(feat,epoch_to_romove) = sc(1); % negative classe's score


Error in Sigma_cross_validation (line 49)
        [scores,prediction,index_selected,
        classObj]=Sigma_cross_validation_lhso(features_results,init_parameter);


Error in compute_classification (line 26)
handles.performances_results =
Sigma_cross_validation(handles.features_results,handles.init_parameter,handles.init_method);


Error in gui_aure_v1>DC_pb_compute_Callback (line 510)
handles = compute_classification(handles, hObject);

Error in gui_mainfcn (line 95)
        feval(varargin{:});

Error in gui_aure_v1 (line 42)
    gui_mainfcn(gui_State, varargin{:});

Error in
matlab.graphics.internal.figfile.FigFile/read>@(hObject,eventdata)gui_aure_v1('DC_pb_compute_Callback',hObject,eventdata,guidata(hObject)) 
Error while evaluating UIControl Callback.
```






