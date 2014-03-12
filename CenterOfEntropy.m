function [ coeOffset ] = CenterOfEntropy( img )
    coeOffset = CenterOfIntensity(entropyfilt( img ));
end

