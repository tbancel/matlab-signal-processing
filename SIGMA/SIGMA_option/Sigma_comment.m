function Sigma_comment(init_parameter,sigma_comment)
% This function is part of SIGMA box, it's used to show a comment according
% to the initial parameters store in the init_parameter.sigma_show_comment

if init_parameter.sigma_show_comment==1;
    display(sigma_comment);
end

end