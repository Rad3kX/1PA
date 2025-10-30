clc, clear, close all
trig = 4
x = 0:0.01:10*pi
y = 5*sin(x);
% NEJISTOTA
idx = abs(y-trig) < 0.005

plot(x,y)
hold on
plot([x(1) x(end)],[trig trig])
CHANGE = x(idx)
numel(find(idx==1))
CHANGE = [0, CHANGE(1,:)]
CHANGE = [CHANGE(1,:), x(end)]
for i = 1:numel(CHANGE)-1
    if mod(i,2) == 1
        plot([CHANGE(i) CHANGE(i+1)],[1 1], 'r-')
    else 
        plot([CHANGE(i) CHANGE(i+1)],[0 0], 'r-')
    end
end
for i = 2:numel(CHANGE)-1
    if mod(i,2) == 1
        plot([CHANGE(i) CHANGE(i)],[1 0], 'r-')
    else 
        plot([CHANGE(i) CHANGE(i)],[1 0], 'r-')
    end
end
grid on
