clc, clear
mystery_matrix(9)
function y = mystery_matrix(n)
    size = 2*n+1;
    A = zeros(size);
    pivot = 0;
    for i = 0:size-1
        A(end-i, :) = (pivot-i:size-i-1);
    end
    y = A;
end