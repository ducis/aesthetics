from cv import *
from svHist import *
def svHistFromFile(name):
    im = LoadImageM(name)
    sv = sv_histogram(im)
    SaveImage(name+'hist.png',sv[1])
