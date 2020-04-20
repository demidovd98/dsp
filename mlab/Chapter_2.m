%%%%% Comments:

%-%-%


%%%%% Main:

%%% Paragraph 2.1: 
% Topic: Proof of: sin(2*pi*f*n*ts) = sin(2*pi*(f+k*fs)*n*ts), or f2 = f1+k*fs
    % P. S.: sin(2*pi*f*n*ts) => sin(2*pi*f*n*ts+2*pi*m) =>
        % => sin(2*pi*(f+m/(n*ts))*n*ts) => k=m/n =>
        % => sin(2*pi*(f+k*fs)*n*ts)
        
% Code:
Amp = 1; % Амплитуда сигнала (макс. значение по y)
f1 = 7000; % Частота повторения сигнала (f раз в секунду, Гц)
f2 = 1000;
fs = 6000; % Частота дискретизации (fs отсчётов в секунду, Гц)
ts = 1/fs; % Период дисркетизации (время между отсчётами fs, сек.)
t = 0.001; % Длительность всего сигнала в секундах (ось времени, сек.)
n = t/ts; % Количество дискретных значений (n отсчётов за всё время, шт.)

k = (f2-f1)/fs; % f2 = f1+k*fs => k*fs = f2 - f1 => k =

timePeriodAll_Mass = 0 : ts : t;
func1 = sin(2*pi*f1*timePeriodAll_Mass);
func2 = sin(2*pi*f2*timePeriodAll_Mass);

figure
plot (timePeriodAll_Mass, func1, 'b');
%hold on
grid on
title('Function <F1>')

figure
plot (timePeriodAll_Mass, func2, 'r');
%hold off
grid on
title('Function <F2>')
%-%

%%% Paragraph <Name>: 
%-%

%-%-%