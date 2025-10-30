acronym('hehe boi ni h')
function [output] = acronym(vstup)
idx = vstup == ' '
ano = 1 == 1
idx_new = [ano, idx] 
vstup = upper(vstup)
output = vstup(idx_new)
end