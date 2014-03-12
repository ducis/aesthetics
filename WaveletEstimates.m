function [ xs,ys ] = WaveletEstimates( imgs, power, wname, level )

    xs = zeros([numel(imgs) level]);
    ys = zeros([numel(imgs) level]);
    for i = 1:numel(imgs)
        [C,S] = wavedec2(imgs{i},level,wname);
        for j = 1:level
            h = detcoef2('h',C,S,j);
            v = detcoef2('v',C,S,j);
            d = detcoef2('d',C,S,j);
            t = (abs(h).^power+abs(v).^power+abs(d).^power);
            [xs(i,j),ys(i,j)] = Center1(t./sum(sum(t)));
        end
        %t = appcoef2(C,S,wname);
        %[xs(i,level+1),ys(i,level+1)] = Center1(t./(max(max(t))-min(min(t))));
    end

end

