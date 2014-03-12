function [ img ] = RandomImage( sz,n )
    img(1:sz(1),1:sz(2)) = rand;
    for i=1:n
      img = FillRect(img,RandPos(sz),RandPos(sz),randi([0,3])*0.33);
    end;
end

function [ pos ] = RandPos(sz)
    pos = arrayfun(@(s)randi([1,s]),sz);
end