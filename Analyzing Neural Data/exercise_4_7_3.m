function res = exercise_4_7_3()
    rand_mat = exercise_4_7_1(4,8)';
    res = zeros(32, 3);
    for i = 1:32
        res(i, 1) = ceil(i/8);
        res(i, 2) = ceil(i/4);
        res(i, 3) = rand_mat(i)>0.5;
    end
    save 'exc_473_res.xls' res -ASCII -tabs;
end