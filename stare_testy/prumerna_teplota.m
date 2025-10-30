clc, clear, close all
A = readtable('temp.txt')
AVG = zeros(12,1)
B = table2array(A(:,1))
cas = 1:1:numel(B)
B = transpose(B)
plot(cas, B, '-')
hold on
grid on
for i=0:30:330
    vektor = i:1:(30+i)
    submatrix = B(1+i:30+i)
    avg = mean(submatrix)
    plot([vektor], [avg*ones(1,31)],'r', 'LineWidth', 2)
    AVG(i/30+1) = avg
end
for i = 1:1:11
    plot([30*i 30*i],[AVG(i), AVG(i+1)], 'r', 'LineWidth', 2)
end
legend({'Teplota','Průměrná teplota'},'Location','southwest')
xlabel("Dny")
ylabel("Teplota")
