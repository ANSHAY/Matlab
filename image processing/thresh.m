function thrsh = thresh(lvl)
    i = imread('img.jpg');
    im = rgb2gray(i);
    %imshow(im);
    n=255/(lvl-1);
    im_red = (im/n);
    par = 255/max(max(im_red));
    im_red1 = (im_red*par);
    figure, imshow(im_red1);
end