function subject_list = DL_struct2cell(files)

subject_list = cell(length(files), 1);
for cF = 1:length(files)
    
   subject_list{cF} = files(cF).name(1:(end-4));
     
end