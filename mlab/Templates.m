%%%%% Comments:

%-%-%


%%%%% Plot templates:

%%% Continuous function ( y = Amp*sin(2*pi*f*t) ):
%{
% General variables:
Amp = 1; % Амплитуда сигнала (макс. значение по y)
f = 1; % Частота повторения сигнала (f раз в секунду, Гц)
T = 1/f; % Период одного сигнала (один полный проход за T секунд, сек.)
t = 10; % Длительность всего сигнала в секундах (ось времени, сек.)
%}

%{
% Title: Base sin(), [fplot()]:
figure
fplot(@sin,[-2*pi 2*pi]); % [-2*pi 2*pi] - интервал по оси x
grid on
%}

%{
% Title: My func ('ough'), [fplot()]:
figure
fplot (@(x) Amp*sin(x), [-5 5]); % [-5 5] - интервал по оси x
grid on
title('Function <Name>')
xlabel('x');
ylabel('y');
%}

%{
% Title: My func, [plot()]:
timePeriodAll_Mass = 0 : 1 : t;
func = Amp*sin(2*pi*f*timePeriodAll_Mass);

figure
plot (timePeriodAll_Mass, func);
grid on
title('Function <Name>')
xlabel('x');
ylabel('y');
%}
%-%


%%% Discrete function ( y = Amp*sin(2*pi*f*n*ts) ):
%{
% General variables:
Amp = 1; % Амплитуда сигнала (макс. значение по y)
f = 1; % Частота повторения сигнала (f раз в секунду, Гц)
n = 10; % Количество дискретных значений (n отсчётов за всё время, шт.)
fs = 10; % Частота дискретизации (fs отсчётов в секунду, Гц)
ts = 1/fs; % Период дисркетизации (время между отсчётами fs, сек.)
t = n*ts; % Длительность всего сигнала в секундах (ось времени, сек.)
Ts = N*ts; % = 1/f % Период одного сигнала (один полный проход за Ts секунд, сек.)
    % где N - количество отсчётов за один период (определяем вручную по графику)
        % P.S.: N = (n/t)/f, но мы не знаем f, поэтому вручную)
%}

%{
% Title: My func, [plot()]:
timePeriodAll_Mass = 0 : ts : n;
func = Amp*sin(2*pi*f*timePeriodAll_Mass);

figure
plot (timePeriodAll_Mass, func);
grid on
title('Function <Name>')
xlabel('x');
ylabel('y');
%}
%-%

%-%-%


%%%%% Main:

%-%-%