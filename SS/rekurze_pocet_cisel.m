clear all, clc, close all
pocet_cisel(7)       % 1 číslice
pocet_cisel(42)      % 2 číslice
pocet_cisel(123456)  % 6 číslic
function pocet = pocet_cisel(n)
    if n < 10
        pocet = 1;
    else
        pocet = 1+pocet_cisel(floor(n/10));
    end
end