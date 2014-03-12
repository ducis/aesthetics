s = arrayfun(@(n)HSVCorr(imread([l n.name])), r, 'UniformOutput', false);
s = cellfun(@(x)x(2,3),s);