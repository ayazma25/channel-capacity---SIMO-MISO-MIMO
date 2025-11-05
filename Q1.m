clear; clc; close all;

SNR_dB = 0:5:40; % % SNR in dB
SNR_lin = 10.^(SNR_dB/10); % SNR in linear vector
% Compute Capacity (bits/s/Hz)
C = log2(1 + SNR_lin);

% Display results 
disp(table(SNR_dB.', SNR_lin.', C.', 'VariableNames', {'SNR(dB)','SNR(linear)','Capacity(bits_per_Hz)'}));

% Plot
figure(1);
plot(SNR_dB, C, '-o','LineWidth',1, 'MarkerSize',4,'Color', [1 0 0]);
grid on;
xlabel('SNR (dB)');
ylabel('Capacity (bits/s/Hz)');
title('AWGN SISO Channel Capacity');
