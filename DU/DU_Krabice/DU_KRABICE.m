clc, clear, close all
Q1 = zeros(1,10);
Q2 = zeros(1,10);
Q3 = zeros(1,10);
Q4 = zeros(1,10);
n_opakovani = 1000000;
%% simulace kostek - oddelene
hold on
subplot(1,2,1)
simulace_kostek(30)
hold off

%% metoda 1: pouze stred 
for n = 1:1:n_opakovani
index = 3;
q =my_pick(index);
Q1(1,n) = q;
end
avg1 = sum(Q1)/n_opakovani

%% medoda 2: pouze pravy okraj(1)
for n = 1:1:n_opakovani
index = 1;
q =my_pick(index);
Q2(1,n) = q;
end
avg2 = sum(Q2)/n_opakovani

%% metoda 3: pouze dvojka
for n = 1:1:n_opakovani
index = 2;
q =my_pick(index);
Q3(1,n) = q;
end
avg3 = sum(Q3)/n_opakovani

%% metoda 4: random cislo
for n = 1:1:n_opakovani
index = randi([1,5]);
q =my_pick(index);
Q4(1,n) = q;
end
avg4 = sum(Q4)/n_opakovani

subplot(1,2,2)
hold on
plot(Q1, 'b-','DisplayName', 'Metoda 1');
plot(Q2, 'r-','DisplayName', 'Metoda 2');
plot(Q3, 'g-', 'DisplayName', 'Metoda 3');
plot(Q4, 'y-', 'DisplayName', 'Metoda 4');
plot([0,n_opakovani*1.1], [avg1, avg1], 'b--', 'LineWidth', 1.5, 'DisplayName', 'Prumer 1')
plot([0,n_opakovani*1.1], [avg2, avg2], 'r--','LineWidth', 1.5,'DisplayName', 'Prumer 2' )
plot([0,n_opakovani*1.1], [avg3, avg3], 'g--','LineWidth', 1.5,'DisplayName', 'Prumer 3')
plot([0,n_opakovani*1.1], [avg4, avg4], 'y--','LineWidth', 1.5,'DisplayName', 'Prumer 4')
grid on
legend('show');
title('Pocet pokusu')