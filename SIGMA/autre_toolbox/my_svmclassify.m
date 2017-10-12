function [o_class, o_score]=my_svmclassify(i_svm,i_data)

for l_sample = 1 : length(i_data),
    [class, score] = svmdecision(i_data(l_sample,:), svm);
    o_class(i) = class;
    o_score(i,1) =  score;
    o_score(i,2) =  0;
end


for l_sample = 1 : length(i_data,1),
    max_score = max(o_score(: , 1));    
    min_score = min(o_score(: , 1));  
    if (o_score(i , 1) < 0)
        nomalized_score = o_score(i , 1) / (2 * min_score) + 0.5;
        o_score(i , 2) = nomalized_score;
        o_score(i , 1) = 1 - nomalized_score;
    else
        nomalized_score = o_score(i , 1) / (2 * max_score) + 0.5;
        o_score(i , 1) = nomalized_score;
        o_score(i , 2) = 1 - nomalized_score;
    end
end