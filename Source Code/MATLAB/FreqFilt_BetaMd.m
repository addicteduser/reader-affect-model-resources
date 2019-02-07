function Hd = FreqFilt_BetaMd
%FreqFilt_BetaMd Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.0 and the Signal Processing Toolbox 7.2.
% Generated on: 17-Aug-2016 13:35:03

% FIR least-squares Bandpass filter designed using the FIRLS function.

% All frequency values are in Hz.
Fs = 128;  % Sampling Frequency

N      = 24;    % Order
Fstop1 = 15.5;  % First Stopband Frequency
Fpass1 = 16;    % First Passband Frequency
Fpass2 = 20;    % Second Passband Frequency
Fstop2 = 20.5;  % Second Stopband Frequency
Wstop1 = 1;     % First Stopband Weight
Wpass  = 1;     % Passband Weight
Wstop2 = 1;     % Second Stopband Weight

% Calculate the coefficients using the FIRLS function.
b  = firls(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 Fs/2]/(Fs/2), [0 0 1 1 0 ...
           0], [Wstop1 Wpass Wstop2]);
Hd = dfilt.dffir(b);

% [EOF]
