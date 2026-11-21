clc;
clear;
close all;

years = [1986
1990
1998
2013
2017
2019
2021
2025];

dataRates = [6553600
791347200
1575936000
2222222222
6635520000
12700000000
24640976000
39239680000];

figure()
hold on
stairs(years, dataRates/8/1e6, LineWidth=1.5)
title("Calcium Imaging Data Rates Over Time")
xlabel("Year Published")
ylabel("Data Rate (MB/s)")
hold off
