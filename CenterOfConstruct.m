function [ x,y ] = CenterOfConstruct( img, power, wname, weights )
	[xs,ys] = WaveletEstimates( {img}, power, wname, numel(weights) );
    x = sum((xs-0.5)*weights)+0.5;
    y = sum((ys-0.5)*weights)+0.5;
end

