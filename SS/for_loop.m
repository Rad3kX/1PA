N = 15;
fib = zeros(1, N); % 1. Předalokace paměti (důležité pro rychlost!)

% Nastavíme první dva členy
fib(1) = 1;
fib(2) = 1;

% Smyčka začíná až od 3, protože 1 a 2 už máme
for i = 3:N
    fib(i) = fib(i-1) + fib(i-2);
end

disp(fib)