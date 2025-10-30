clc, clear, close all
star(14,10)
function star(n,L)
if mod(n,2) == 0
    theta = linspace(0, 2*pi, n+1)
else
    theta = linspace(0, 2*pi, n)
end
hold on
for i = 1:n
x_end = L*cos(theta(i))
y_end = L*sin(theta(i))
if mod(i,2) == 1
    plot([0 x_end],[0 y_end], 'b--', LineWidth=1, Marker='.', MarkerEdgeColor='r', MarkerSize=15)
else
    plot([0 x_end],[0 y_end], 'k', LineWidth=5, Marker='.',MarkerEdgeColor='r', MarkerSize=30)
end
end
axis equal
axis tight
grid on
end