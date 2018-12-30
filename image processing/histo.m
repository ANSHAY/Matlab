clear;
clc;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Gain = 1;
Offset = 0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i = imread('img1.jpg');
i = rgb2gray(i);
figure, imhist(i);

j = imadjust(i);
figure, imhist(j);

d = double((max(max(i)) - min(min(i))))/255;
k = (i-min(min(i)))./d;
figure, imhist(k);

figure, imshow(j);
figure, imshow(k);