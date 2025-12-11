clc, clear
veta = 'tohle je veta v matlabu';
veta(1) = upper(veta(1))
for i = 1:1:length(veta)
    if veta(i) == ' '
        veta(i+1) = upper(veta(i+1))
    end
end