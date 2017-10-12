function features_results=Time_fd_katz(init_parameter,~,features_results,s_EEG,Nsubj,Nepochs,Nmethode)
%==========================================================================
%% This script is part of the BCI toolbox, it's used by the main function to compute the "Fractales dimension"
%==========================================================================
% display(['Method N°: ' num2str(init_method(method(Nmethode)).method_number)])
% display(['Method name: ' init_method(method(Nmethode)).method_name])
%fractal_dimension
% This script comput the fractal dimension for each channels and epoches
% o_fractal() = fc_fractal_dimension(serie)

o_fractal_katz_ch=[];
temp0=[];
if (Nepochs==1)
o_fractal_katz_epo=[];
if Nsubj==1
features_results.o_fractal_katz=[];
end
end

% Apply a filter here according to the choice of the user
apply_filter=init_parameter.apply_filter(Nmethode);

for Nchannel=1:size(s_EEG.data,1)                   

i_EEG=s_EEG.data(Nchannel,:,Nepochs);

if (apply_filter==1)
for Nband=1:init_parameter.nb_bands
filt=init_parameter.filt_band_param;
fdata = filter(filt(Nband),i_EEG);

o_fractal_katz0 = fc_fractal_dimension(fdata);       
o_fractal_katz_ch =[o_fractal_katz_ch,o_fractal_katz0];
% Track the identification of the band
if((Nsubj==1)&&(Nepochs==1))
temp0=[temp0; init_parameter.method(Nmethode) Nchannel init_parameter.selected_band(Nband) ];
end
end
else
o_fractal_katz0 = fc_fractal_dimension(i_EEG);
o_fractal_katz_ch =[o_fractal_katz_ch,o_fractal_katz0];
% Track the identification of the band
if ((Nsubj==1)&&(Nepochs==1))
temp0=[temp0;init_parameter.method(Nmethode) Nchannel nan];
end    
end
clear o_mean_value0
%     
% o_fractal_katz0= fc_fractal_katz_dimension(i_EEG);
% o_fractal_katz_ch=[o_fractal_katz_ch,o_fractal_katz0];
% clear o_fractal_katz0;
end
o_fractal_katz_epo=o_fractal_katz_ch';  
features_results.o_fractal_katz=[features_results.o_fractal_katz o_fractal_katz_epo];
%features_results.o_fractal_katz=o_fractal_katz;

if ((Nsubj==1)&&(Nepochs==1))
features_results.o_fractal_katz_band=temp0;
end   
%% Probleme : the o_fractal_katz_epo should be deleted at the end of the execution

%%
% % %----------------------------------------------------------------------
% % %                  Brain Computer Interface team
% % % 
% % %                            _---~~(~~-_.
% % %                          _{        )   )
% % %                        ,   ) -~~- ( ,-' )_
% % %                       (  `-,_..`., )-- '_,)
% % %                      ( ` _)  (  -~( -_ `,  }
% % %                      (_-  _  ~_-~~~~`,  ,' )
% % %                        `~ -^(    __;-,((()))
% % %                              ~~~~ {_ -_(())
% % %                                     `\  }
% % %                                       { }
% % %   File created by 
% % %   Creation Date : 21/10/2016
% % %   Updates and contributors :
% % %
% % %   Citation: [creator and contributor names], comprehensive BCI
% % %             toolbox, available online 2016.
% % %           
% % %   Contact info : francois.vialatte@espci.fr          
% % %   Copyright of the contributors, 2016
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------
