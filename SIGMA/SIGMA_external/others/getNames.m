function [values, names] = getNames(varargin)
values = varargin;
names = cell(size(varargin));
for iArg = 1:nargin
    names{iArg} = inputname(iArg);
end