clc, clear, close all
v = 10000;  %velikost
X = zeros(1, v);
l = 1:1:v;
% for j=1:1:v
%     n = j;
%     A = 2*(rand(n,2)-0.5);
%     c = (A(:,1).^2+A(:,2).^2);
%     q = numel(find(c<1));
%     q = 4*q/n;
%     X(n) = q;
% end
% plot(l,X);
% hold on;
% plot(l, pi * ones(1,v))
% hold off;

% BUD HODIT DO KOMENTU JEDNO NEBO DRUHE!!


KRUH = [];
MIMO = [];
a =1;
b=1;
n = v;
A = 2*(rand(n,2)-0.5);
for i = 1:1:v
    c = A(i,1).^2+A(i,2).^2;
    if c <= 1
        KRUH(a,1) = A(i,1);
        KRUH(a,2) = A(i,2);
        a = a+ 1;
    else
        MIMO(b,1) = A(i,1); 
        MIMO(b,2) = A(i,2); 
        b = b+1;
    end
end
plot(KRUH(:,1),KRUH(:,2),"ro");
hold on;
plot(MIMO(:,1),MIMO(:,2),"bo");
hold off;
axis equal
axis tight

