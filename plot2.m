clc;
clear;
close all;

% Load resistance values (Ohms)
RL = [6708.2 9046.3 32495 46301 74758 1e6];

% Predicted gain in dB
Av_pred_dB = [8.21 10.68 20.63 23.10 26.11 35.91];

% Measured gain in dB
Av_meas_dB = [9.50 11.98 22.02 24.56 27.69 35.88];

figure;

% Predicted = curve
semilogx(RL, Av_pred_dB, '-', 'LineWidth', 2);
hold on;

% Measured = markers
semilogx(RL, Av_meas_dB, 'o', 'MarkerSize', 8, 'LineWidth', 2);

grid on;
xlabel('Load Resistance R_L (\Omega)');
ylabel('Voltage Gain A_v (dB)');
title('Plot 1: Gain vs Load Resistance');

legend('Predicted Gain', 'Measured Gain', 'Location', 'best');

hold off;
