clc;
clear;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% A.6 Plot 4 : Breadboard Version Bode Plot (Corrected)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Frequency values (Hz)
f_bb = [10 20 50 100 200 500 1e3 2e3 5e3 1e4 2e4 3e4 ...
        5e4 1e5 2e5 5e5 1e6];

% Corrected measured input voltages (mV)
vin_bb = [3.84 3.313 208 288 440 560 705 698 688 684 ...
          677 664 655 648 648 647 637];

% Corrected measured output voltages (mV)
vout_bb = [4.01 8.648 20 100 184 508 1037 860 860 845 ...
           650 493 307 168 72.5 33.5 21.8];

% Voltage gain
Av_bb = vout_bb ./ vin_bb;

% Gain in dB
Av_bb_dB = 20 * log10(abs(Av_bb));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;

semilogx(f_bb, Av_bb_dB, 'o-', ...
    'LineWidth', 2, ...
    'MarkerSize', 8);

grid on;
xlabel('Frequency (Hz)');
ylabel('Gain |A_v| (dB)');
title('Plot 4: Breadboard Version Bode Plot');

legend('Measured Breadboard Gain', 'Location', 'best');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Optional: Pole Estimates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Midband gain (approximate max)
[max_gain_dB, idx] = max(Av_bb_dB);
f_mid = f_bb(idx);

fprintf('Maximum (midband) gain = %.2f dB at %.0f Hz\n', ...
    max_gain_dB, f_mid);

% -3 dB estimate from max
target = max_gain_dB - 3;

fprintf('-3 dB target = %.2f dB\n', target);

disp('Use the graph to estimate low-frequency and high-frequency poles.');
