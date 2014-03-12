function [ cs ] = SolveForCoeffs( imgs, power, wname, level, hxs, hys )
    %xs * cs = hxs
    %ys * cs = hys
    [xs,ys] = WaveletEstimates( imgs, power, wname, level );
    ests = [ xs; ys ]-0.5;
    target = [ hxs; hys ]-0.5;
    cs = ests\target;
end

