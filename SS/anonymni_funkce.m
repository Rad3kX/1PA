clc, clear, close all
fun = @(x) (x.^3+x.^3-x.^2+6)./(x.^2-3)
x_min = fminsearch(fun, 0);
inp = linspace(0,3,100);
vec = fun(inp);
plot(inp, vec)
[~, index]=max(vec)
[~, index_2]=min(vec)
inp(index)