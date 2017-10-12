function label_matrix=Sigma_adapt_label(label_vector)

%%% This function is part of Sigma toolbox
%%% label_matrix=Sigma_adapt_data(label_vector)
%%% input : vector of labels,  
%%% output: matrix specified as an N-by-M matrix,
%%% where N is the number of classes and M is the number of examples.
%%% Each column of the matrix can either be in the 1-of-N form indicating 
%%% which class that particular example belongs to, 
%%%  TODO : or can contain the probabilities, where each column sums to 1. 

labels=label_vector;
classe=unique(labels);
nb_classe=length(unique(labels));
nb_example=length(labels);

out_matrix=nan(nb_classe,nb_example);

for ind=1:nb_example
    cl=labels(ind);
    %if strcmp(class(cl),'double')
        if cl==classe(1)
            out_matrix(1,ind)=1;
            out_matrix(2,ind)=0;
        else
            out_matrix(1,ind)=0;
            out_matrix(2,ind)=1;
        end
   % end
    
%     if ischar(cl{1})
%         if strcmp(cl{1},classe{1})
%             out_matrix(1,ind)=1;
%             out_matrix(2,ind)=0;
%         else
%             out_matrix(1,ind)=0;
%             out_matrix(2,ind)=1;
%         end
%     end
end
label_matrix=out_matrix;

end


