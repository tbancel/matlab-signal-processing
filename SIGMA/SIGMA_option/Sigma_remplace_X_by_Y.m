function Sigma_remplace_X_by_Y(directory,Xname,Yname)

% Sigma_remplace_X_by_Y(directory,Xname,Yname)
% This function replace the string Xname by the string Yname in a matlab file
% for all the mat file contained on the folders contained in the directory 
% could be extended for the other format 
% /!\ Only for the folder at one levels 


% A=dir;
% myDir = find(vertcat(A.isdir));
% A(myDir).name


files = dir(directory);   % assume starting from current directory

filenames = {files.name};
subdirs = filenames([files.isdir]);
for s = 3:length(subdirs)
  subdir = subdirs{s};
  % process subdirectory
  disp(subdir);   % for example
  cd(subdir)
    w = what;
    mfiles = w.m; % get all the .m files
    
    for ii= 1:length(mfiles)
    l = textread(mfiles{ii},'%s', 'delimiter', '\n');
    l = regexprep(l, Xname, Yname); %%     l = regexprep(l, 'X', 'Y'); remplace X par Y
    %l = regexprep(l, 'Xname', 'Yname'); %%     l = regexprep(l, 'X', 'Y'); remplace X par Y

    % note this will overwrite the original file
    fid=fopen(mfiles{ii}, 'wt');
        for jj=1:length(l)
            fprintf (fid, '%s\n', l{jj});
        end
    fclose (fid);
    end
    cd ..  
end

% 
% w = what;
% mfiles = w.m; % get all the .m files
% for ii= 1:length(mfiles)
%     l = textread(mfiles{ii},'%s', 'delimiter', '\n');
%     l = regexprep(l, '_amp_', '_time_'); %%     l = regexprep(l, 'X', 'Y'); remplace X par Y
%     % note this will overwrite the original file
%     fid=fopen(mfiles{ii}, 'wt');
%     for jj=1:length(l)
%         fprintf (fid, '%s\n', l{jj});
%     end
%     fclose (fid);
% end