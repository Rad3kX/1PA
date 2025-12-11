clc, clear
M = magic(5)
M>10 & M<20 %logicka matice
M(M>10 & M<20) = 0 %je to o neco kratsi nez find

%%
x = 1:5;        % klasik radek (1x5)
y = (1:5)';     % transpozice!

% implicitni expanze
Z = x.^2 + y.^2; 


%%
a = rand(5,2)
b = rand(4,2)
A_reshaped = reshape(a, 5, 1, 2)
B_reshaped = reshape(b, 4, 1, 2)