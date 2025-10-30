clc; clear; close all;
weather = load("weather.mat");
M = weather.weather;

idx = M.City == "San Diego";
DATUM = M.Date(idx);
TEPLOTA = M.Temperature(idx);
TEPLOTA = (TEPLOTA-32);
TEPLOTA = TEPLOTA/1.8;
avg = mean(TEPLOTA);
pocet_elementu = numel(TEPLOTA);

idx_pod = find(TEPLOTA<avg);
TEPLOTA_POD = TEPLOTA(idx_pod);
DATUM_POD = DATUM(idx_pod);

idx_nad = find(TEPLOTA>avg);
TEPLOTA_NAD = TEPLOTA(idx_nad);
DATUM_NAD = DATUM(idx_nad);

plot(DATUM, avg*ones(1,pocet_elementu));
hold on
plot(DATUM_POD, TEPLOTA_POD, 'r+')
plot(DATUM_NAD, TEPLOTA_NAD, 'b*')
