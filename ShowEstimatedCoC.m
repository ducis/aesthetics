function h = ShowEstimatedCoC( img, power, wname, weights )
    h = figure;
    imshow(img);
    [x,y] = CenterOfConstruct( img, power, wname, weights );
    impoint(imgca,x*size(img,2),y*size(img,1));
end

