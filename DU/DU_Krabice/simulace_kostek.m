function simulace_kostek(n)
    A = zeros(1,5);
    index = randi([1,5]);
    A(index) = 1;
    M = zeros(n,5);
    for k=1:1:n
        M(k,:) = A(1,:);
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
    end
    imagesc(M);
    title('Simulace kostek')
end