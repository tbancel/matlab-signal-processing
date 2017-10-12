


[ best_organisation, best_organisation_infos]=Sigma_feature_identification(init_parameter,init_method,features_results,features_results.idx_best_features);
fid = fopen('best_organisation.txt','a');
fprintf(fid,'\n %s',best_organisation_infos)
for 1:size(best_organisation,1)
    fprintf(fid,'\n %s',['The feature ' num2str( best_organisation(1,2))  ' is ranked ' num2str(ind2) ' and comes from method N°:  '...
    num2str( best_organisation(1,2)) '  ('  best_organisation(1,2) '); channel N°: '...
    num2str( best_organisation(1,2)) '('  best_organisation(1,2)  '); band N°: ' num2str( best_organisation(1,2)) '(',  best_organisation(1,2) ,'); power type N°: '...
    num2str( best_organisation(1,2)) ', Type : ' info '.'] );
    fclose(fid);
end