function [ hxs,hys ] = GUIGetPoints( imgs )
    hxs = zeros([numel(imgs) 1]);
    hys = zeros([numel(imgs) 1]);
    hFig = figure;
    for i = 1:numel(imgs)
        imshow(imgs{i});
        %axis([0 512 0 512]);
        set(imgca,'Visible','on');
        [hxs(i),hys(i)] = ginput(1);
        hxs(i) = hxs(i)/size(imgs{i},2);
        hys(i) = hys(i)/size(imgs{i},1);
        %hxs(i) = hxs(i)/(imgca
    end
    close(hFig);
end

