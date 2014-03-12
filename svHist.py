# -*- coding: utf-8 -*-

# Calculating and displaying 2D Hue-Saturation histogram of a color image
import sys
import cv
import math

def sv_histogram(src):
    # Convert to HSV
    hsv = cv.CreateImage(cv.GetSize(src), 8, 3)
    cv.CvtColor(src, hsv, cv.CV_BGR2HSV)
    # Extract the H and S planes
    s_plane = cv.CreateMat(src.rows, src.cols, cv.CV_8UC1)
    v_plane = cv.CreateMat(src.rows, src.cols, cv.CV_8UC1)
    cv.Split(hsv, None, s_plane, v_plane, None)
    planes = [s_plane, v_plane]
    s_bins = 256
    v_bins = 256
    hist_size = [s_bins, v_bins]
    
    s_ranges = [0, 255]
    
    v_ranges = [0, 255]
    ranges = [s_ranges, v_ranges]
    hist = cv.CreateHist(hist_size, cv.CV_HIST_ARRAY, ranges, 1)
    cv.CalcHist([cv.GetImage(i) for i in planes], hist)
    hist_img = cv.CreateImage((s_bins, v_bins), 8, 1)
    mx = cv.GetMinMaxHistValue(hist)[1]
    #hist_img = cv.GetImage(hist)
    for s in range(s_bins):
        for v in range(v_bins):
            bin_val = math.floor(math.log(cv.QueryHistValue_2D(hist, s, v)/mx*(math.e-1.0)+1.0)*255)
            cv.Rectangle(hist_img,(s,v),(s,v),cv.RGB(bin_val,bin_val,bin_val),cv.CV_FILLED)
    return (hist,hist_img)
