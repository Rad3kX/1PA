clc, clear, close all
X = readtable("prices.txt")
CENA = table2array(X(:,1))
CENA = transpose(CENA)
cas = 1:1:numel(CENA)
A = zeros(10,2)
plot(cas, CENA, 'b-')
hold on
for i = 1:1:10
    submatrix = CENA(1+(i-1)*10:(i*10))
    [a, idx_min] = min(submatrix)
    [b, idx_max] = max(submatrix)
    plot(cas(idx_min+(i-1)*10), submatrix(idx_min), 'ro')
    plot(cas(idx_max+(i-1)*10), submatrix(idx_max), 'go')
end
xlabel("Dny")
ylabel("Ceny")