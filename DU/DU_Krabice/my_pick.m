function opakovani = my_pick(h)
    A = zeros(1,5);
    index = randi([1,5]);
    A(index) = 1;
    x = 0;
    while 1
        x=x+1;
        if index == 1
            A(index) = 0;
            A(index+1) = 1;
            index = index+1;
        else
            if index == 5
                A(index) = 0;
                A(index-1) = 1;
                index = index-1;
            else
                A(index) = 0;
                q = rand();
                if q >= 0.5
                    index = index+1;
                    A(index) = 1;
                else
                    index = index-1;
                    A(index) = 1;
                end
            end
        end
        if index == h
            opakovani = x;
            return
        elseif x > 10^6
            opakovani = NaN;
            break
        end
    end
end