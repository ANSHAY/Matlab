%function avrg = avrg(sz)
    sz = 15;
    sz = sz-2;
    i = imread('img.jpg');
    im = double(rgb2gray(i));
    imshow(im,[0,255]);
    [m,n] = size(im);
    im2 = zeros(m,n);
    for j = 1:m
        for k = 1:n
            count = 0;
            for d = -1*sz:sz
                for e = -1*sz:sz
                    if((j+d>0)&&(k+e>0)&&(j+d<=m)&&(k+e<=n))
                        im2(j,k) = im2(j,k) + im(j+d,k+e);
                        count = count+1;
                    end
                end
            end
            im2(j,k) = im2(j,k)/count;
        end
    end
    figure, imshow(im2,[0,255]);
%end