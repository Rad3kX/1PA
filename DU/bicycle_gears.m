clc, clear, close all
temp = zeros(1,3);
A = zeros(24,3);
front = [22 32 44]  ;             % 
rear = [32 28 24 21 18 15 13 11]; %
for i = 1:1:24
    A(i,1) = front(1+floor((i-1)/8));
end
for i = 1:1:3
    for ii = 1:1:8
        A(ii+8*(i-1),2) = rear(ii);
    end
end

for i = 1:1:24
    A(i,3) = A(i,1)/A(i,2);
end
for i = 1:1:24
    for j = 1:1:23
        if(A(j,3) > A(j+1,3));
            temp = A(j,:);
            A(j,:) = A(j+1,:);
            A(j+1,:) = temp;
        end
    end
end
A = A
bar(A(:,3))
