function exercise_4_7_2()
    image = imread('amsterdam.bmp');
    imshow(image);
    hold on;
    [row, col, ch] = size(image);
    x = [col/2 col/2];
    y = [row/2 1];
    plot(x, y, 'red -');
    plot(375, 480, 'magenta *');
    
    [M, ind_r] = max(image(:,:,1));
    [M, ind_g] = max(image(:,:,2));
    [M, ind_b] = max(image(:,:,3));
    size(ind_r)
    rand_r = randi([1 col])
    rand_g = randi([1 col])
    rand_b = randi([1 col])
    ind_r(rand_r)
    ind_g(rand_g)
    ind_b(rand_b)
    plot(rand_r, ind_r(rand_r), 'red o');
    plot(rand_g, ind_g(rand_g), 'green o');
    plot(rand_b, ind_b(rand_b), 'blue o');
end