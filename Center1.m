function [ x, y ] = Center1( img )
    [xs,ys] = meshgrid(0:1/(size(img,2)-1):1,0:1/(size(img,1)-1):1);
    %img = img.*(1/sum(sum(abs(img))));
    x = sum(sum(xs.*img));
    y = sum(sum(ys.*img));
end



