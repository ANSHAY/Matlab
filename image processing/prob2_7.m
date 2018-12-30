clear;
clc;
K=255;
x0=0;
y0=0;
X = -5:0.01:5;
Y = X;
[x,y] = meshgrid(X,Y);
i = (K*exp(-((x-x0).^2 + (y-y0).^2)));
g = mat2gray(i);
figure, imshow(i);

j = i.^0.1;
figure, imshow(j);