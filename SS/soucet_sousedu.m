clc, clear
A = randi([1, 10], 5, 5);
disp('Původní matice A:');
disp(A);
A_z = zeros(size(A)+2);
A_z(2:end-1,2:end-1)= A;
horni_soused = A_z(1:end-2, 2:end-1);
dolni_soused = A_z(3:end, 2:end-1);
pravy_soused = A_z(2:end-1, 3:end);
levy_soused = A_z(2:end-1, 1:end-2);
B = A+horni_soused+dolni_soused+pravy_soused+levy_soused
B(B>20)=999