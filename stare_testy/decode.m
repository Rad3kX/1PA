   clc, clear, close all
   X = readmatrix('signal.txt')
   A = X
   Y = zeros(1,150)
   B = zeros(1,150)
   logi = zeros(1,150)
   r = NaN*ones(1,150)
   f = NaN*ones(1,150)
   x_axis = linspace(1,150,150)
   for i = 1:1:numel(X)
        Y = [zeros(1,i-1), A(1, i:end)]
        B = B+Y
   end
   B = B ./3
   % plot(x_axis, B, '-')
   for i = 1:1:numel(X)-1
       if B(i) <= B(i+1)
           logi(i) = 1 == 1
       else 
           logi(i) = 0 == 1
       end
   end
   logi = logical(logi)
   r(logi) = B(logi)
   plot(x_axis, r)
   hold on
   logi = ~logi
   f(logi) = B(logi)
   plot(x_axis, f)
   grid on
   title('Graf funkce decode')
   xlabel('Cas')
   ylabel('Frekvence')


   

