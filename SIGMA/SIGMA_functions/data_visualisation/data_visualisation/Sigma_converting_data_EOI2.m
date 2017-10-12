function EEG = Sigma_converting_data_EOI2( eeg )

%==========================================================================
% This function is part of the BCI toolbox, it is a shorter version of the
%external Econectome's pop_matreader function to ensure the data has the 
%correct output
%==========================================================================
% input:-eeg: the signal converted by Sigma_converting_data() that has been
% put in an new stucutre to fit this function requierments.

%outputs:-EEG: an eeg signal conform to the econectome toolbox format.


if isempty(eeg)
    EEG = [];
    errordlg( ['Load ' Fullfilename ' error!'] );
    return;
end
names = fieldnames(eeg);
numfield = length(names);
%if numfield ~= 1 
 %   EEG = [];
   % errordlg('The input is not a valid EEG MAT File');
   % return;
%end

field = char(names);

reqfields = {'nbchan','points','srate','labeltype','labels','data'};
fields = isfield(eeg.(field),reqfields);
if ~all(fields)
idx = find(fields==0);
  missed = strcat(reqfields(idx));
 errordlg(['Miss fields:' missed 'this might be because of a non conform input format.']);
 %pause(10);
 %EEG = Sigma_converting_data(init_parameter_eegfc); 

end
    
EEG = eeg.(field);
if ~isfield(EEG,'name') | isempty(EEG.name)
    [pathstr, name, ext, versn] = fileparts(Fullfilename);
    EEG.name = name;
end

if ~isfield(EEG,'type') | isempty(EEG.type)
    EEG.type = 'EEG';
end

if isempty(EEG.nbchan)
    errordlg('Number of channles is empty!');
    return;
end

if isempty(EEG.points)
    errordlg('Number of points is empty!');
    return;
end

if isempty(EEG.srate)
    warndlg('Sampling rate is empty!');
    EEG.srate = 250;
end

if isempty(EEG.labeltype)
    errordlg('There is no label type!');
    return;
end

if isempty(EEG.labels)
    errordlg('There is no label!');
    return;
end



if EEG.nbchan ~= length(EEG.labels) 
   errordlg('Number of labels is not right!'); 
   return;
end



if ~isfield(EEG,'start') | isempty(EEG.start)
    EEG.start = 1;
end

if ~isfield(EEG,'end') | isempty(EEG.end)
    EEG.end = EEG.points;
end

if ~isfield(EEG,'dispchans') | isempty(EEG.dispchans)
    EEG.dispchans = EEG.nbchan;
end

if ~isfield(EEG,'vidx')
    EEG.vidx = 1:EEG.nbchan;
end

if ~isfield(EEG,'bad')
    EEG.bad = [];
end

if ~isfield(EEG, 'unit')
    EEG.unit = 'uV';
end

if strcmp(EEG.labeltype, 'standard')% Generate standard label locations if the given labels are standard.
    if ~isfield(EEG,'locations')
        EEG.locations = stdLocations(EEG.labels);
        vidx = ~cellfun(@isempty, {EEG.locations(:).X});
        EEG.vidx = find(vidx==1);
    end
else % Read customized label locations if the given labels are not standard.
    if isfield(EEG,'locations') && length(EEG.locations) > 0
        if isfield(EEG.locations,'x')
            EEG.vidx = 1:EEG.nbchan; % has locations.
        else
            if isfield(EEG, 'marks') && length(EEG.marks) == 3
                if EEG.nbchan ~= length(EEG.locations)
                    errordlg('The number of locations is not right!');
                    return;
                end

                reqfields = {'X','Y','Z'};
                fields = isfield(EEG.locations,reqfields);
                if ~all(fields)
                    idx = find(fields==0);
                    missed = strcat(reqfields(idx));
                    errordlg(['Miss dimensions:' missed]);
                end
                cstmlocations(:,1) = cell2mat({EEG.locations(:).X});
                cstmlocations(:,2) = cell2mat({EEG.locations(:).Y});
                cstmlocations(:,3) = cell2mat({EEG.locations(:).Z});
                markedlocs = EEG.marks;

                EEG.locations = coRegistration(cstmlocations, markedlocs);
            else
                errordlg('Miss Marks for Location Co-registration.'); % customized labeltype with locations need marks for co-registration.
                return;
            end
        end
    else
        errordlg('Miss Customized-Channel-Locations information.'); % customized labeltype without locations not suported.
        return;
    end
end

vdata = EEG.data(EEG.vidx,:);
if ~isfield(EEG,'min') | isempty(EEG.min)
    EEG.min = min(min(vdata));
end

if ~isfield(EEG,'max') | isempty(EEG.max)
    EEG.max = max(max(vdata));
end



% ERP analysis
if isfield(EEG, 'event') && length(EEG.event) > 0    
    analysisevent = questdlg('Perform ERP analysis?','','Yes','Cancel','Cancel');
    if strcmp(analysisevent, 'Yes')
        EEG = erpanalysis(EEG);
    end
end


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
% % %   File modified by Joffrey THOMAS
% % %   Creation Date : 08/09/2017
% % %   Updates and contributors :
% % %
% % %   Citation: [creator and contributor names], comprehensive BCI
% % %             toolbox, available online 2016.
% % %           
% % %   Contact info : joffrey.thomas.18@eigsi.fr        
% % %   Copyright of the contributors, 2016
% % %   Creative Commons License, CC-BY-NC-SA
% % %----------------------------------------------------------------------