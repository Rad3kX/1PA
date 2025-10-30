clear all, clc, close all
vypocet_faktorialu(15)
function factorial = vypocet_faktorialu(n)
    if n == 1
        factorial = 1;
    else
        factorial = n*vypocet_faktorialu(n-1);
    end
end