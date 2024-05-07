clear
clc
close all

load_to_png = false;

v.path = 'data/raw/';
v.fname = 'VID_20230827_120604';
v.format = '.mp4';

t.path = 'data/processed/';

if load_to_png
    tic
    vidToImgFolder(v, t);
    toc
end

dsetName = fullfile(t.path, v.fname);

dset = getDset(dsetName);

rng(1618)
nCircles = 2000;
radii = [15,50];
nSamples = 500;


hashes = zeros(dset.nImgs, nCircles, 2);

for i = 1:dset.nImgs
    [feat, ~] = maxMinFeaturesAlongUniqueRandCirc(readimage(dset.imageSet, i), nCircles, radii, nSamples);
    hashes(i, :, :) = feat;
end

save(fullfile("hashes", strcat(v.fname,".mat")), 'hashes')

