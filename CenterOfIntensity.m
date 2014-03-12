function [ coiOffset ] = CenterOfIntensity( img )
    mx = size(img)-1;
    [x,y] = meshgrid(0:mx(1),0:mx(2));
    x = x/mx(1)-0.5;
    y = y/mx(2)-0.5;
    img = mat2gray(img);
    %img = (img-min(img(:)))/(max(img(:))-min(img(:)));
    sx = x.*img;
    sy = y.*img;
    coiOffset = [ sum(sx(:)) sum(sy(:)) ]/sum(img(:))*2;
end

