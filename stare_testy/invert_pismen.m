clc, clear
text = 'Toto je druHY zapoctovy TEst'
switch_case(text)
function [output] = switch_case(text)
idx_low = char(text) > 96 & char(text) < 123 ;
idx_high = char(text) > 64 & char(text) < 91;
text(idx_low) = text(idx_low) - 32;
text(idx_high) = text(idx_high) + 32;
output = text;
end