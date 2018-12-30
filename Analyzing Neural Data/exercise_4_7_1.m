function r = exercise_4_7_1(num_rows, num_cols)
%%% creates a matrix of random numbers of size (num_rows, num_cols)
%%% loops through the matrix and prints whether each number is bigger
%%% than 0.5 or not
    switch nargin
        case 0
            num_rows = 4;
            num_cols = 8;
        case 1
            num_cols = 8;
    end
    r = rand(num_rows, num_cols);
    mark_i = 'st';
    mark_j = 'st';
    big_or_not = '';
    for i = 1:num_rows
        mark_i = mark(i);
        for j = 1:num_cols
            if r(i,j) < 0.5
                big_or_not = "not";
            else
                big_or_not = "";
            end
            mark_j = mark(j);
            fprintf ('The %d'+mark_i+' row and %d'+mark_j+' column has a value of %f and is '+big_or_not+' bigger than 0.5\n', i, j, r(i,j));
        end
    end
end

function mark = mark(i)
        if i == 1
            mark = "st";
        elseif i == 2
            mark = "nd";
        elseif i == 3
            mark = "rd";
        else
            mark = "th";
        end
end