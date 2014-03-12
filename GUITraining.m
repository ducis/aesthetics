function [ c ] = GUITraining( imgs, power, wname, level  )
    [hxs,hys] = GUIGetPoints(imgs);
    c = SolveForCoeffs(imgs,power,wname,level,hxs,hys);
end

