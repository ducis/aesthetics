l = 'E:\cg\Pictures\[����]����ֽ���ա�(wallpaper.showtime.)[�ϴγ���Բ�ס����������˳����µ�˵~~].rar\�ϴγ���Բ�ס����������˳����µ�˵~~\1600-1200\';
r = dir([l '*.jpg']);
r = [r;dir([l '*.png'])];
r = [r;dir([l '*.bmp'])];
s = arrayfun(@(n)RGBCorr(imread([l n.name])), r, 'UniformOutput', false);
s = [cellfun(@(x)x(1,2),s)  cellfun(@(x)x(1,3),s)   cellfun(@(x)x(2,3),s)];
[ss,is] = sort(mean(s,2));
rr = arrayfun(@(n)(r(n).name),is,'UniformOutput',false);
names = cellfun(@(n)[l n],rr,'UniformOutput',false);
for i=1:numel(names)
    urlwrite(['file:///' names{i}],['e:\cg\Pictures\RGBCorrMean\' sprintf('%.5d',i) '.jpg']); 
end
