clear all, clc, close all
soucet_sudych(4)
function soucet = soucet_sudych(n);
    if (n) == 0
        soucet = 0;
    else
        if mod(n,2) == 0
            soucet = n + soucet_sudych(n-1);
        else
            soucet = soucet_sudych(n-1);
        end
    end
end

