function [ cm ] = HSVCorr( rgbimg )
    hsvimg = rgb2hsv(im2single(rgbimg));
    h = squeeze(hsvimg(:,:,1));
    s = squeeze(hsvimg(:,:,2));
    v = squeeze(hsvimg(:,:,3));
    cm = corrcoef([h(:) s(:) v(:)]);
end

