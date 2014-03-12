function [ cm ] = RGBCorr( rgbimg )
    rgbimg = (im2single(rgbimg));
    r = squeeze(rgbimg(:,:,1));
    g = squeeze(rgbimg(:,:,2));
    b = squeeze(rgbimg(:,:,3));
    cm = corrcoef([r(:) g(:) b(:)]);
end

