clc, clear, close all
polyplot(8,2,10)
function polyplot(strany, r, pocet)
theta = linspace(0,2*pi, strany+1)
hold on
for i = 1:1:pocet-1
    r = r+i-1
    x_axis = r*cos(theta)
    y_axis = r*sin(theta)
    if mod(i,2) == 1
     plot(x_axis, y_axis, 'r', 'LineWidth', 2, 'Marker','.', MarkerSize=20, MarkerFaceColor="blue", MarkerEdgeColor="blue")
    else
     plot(x_axis, y_axis, 'k--', 'LineWidth', 5, 'Marker','.', MarkerSize=20, MarkerFaceColor="blue", MarkerEdgeColor="blue")

    end
end
end
axis tight
axis equal