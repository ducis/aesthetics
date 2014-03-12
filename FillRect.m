function img = FillRect( img,p1,p2,c )
    from(:,:) = min(p1(:),p2(:));
    to(:,:) = max(p1(:),p2(:));
    img(from(1):to(1),from(2):to(2))=c;
end

