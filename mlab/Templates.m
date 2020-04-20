%%%%% Comments:

%-%-%


%%%%% Plot templates:

%%% Continuous function ( y = Amp*sin(2*pi*f*t) ):
%{
% General variables:
Amp = 1; % ��������� ������� (����. �������� �� y)
f = 1; % ������� ���������� ������� (f ��� � �������, ��)
T = 1/f; % ������ ������ ������� (���� ������ ������ �� T ������, ���.)
t = 10; % ������������ ����� ������� � �������� (��� �������, ���.)
%}

%{
% Title: Base sin(), [fplot()]:
figure
fplot(@sin,[-2*pi 2*pi]); % [-2*pi 2*pi] - �������� �� ��� x
grid on
%}

%{
% Title: My func ('ough'), [fplot()]:
figure
fplot (@(x) Amp*sin(x), [-5 5]); % [-5 5] - �������� �� ��� x
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
Amp = 1; % ��������� ������� (����. �������� �� y)
f = 1; % ������� ���������� ������� (f ��� � �������, ��)
n = 10; % ���������� ���������� �������� (n �������� �� �� �����, ��.)
fs = 10; % ������� ������������� (fs �������� � �������, ��)
ts = 1/fs; % ������ ������������� (����� ����� ��������� fs, ���.)
t = n*ts; % ������������ ����� ������� � �������� (��� �������, ���.)
Ts = N*ts; % = 1/f % ������ ������ ������� (���� ������ ������ �� Ts ������, ���.)
    % ��� N - ���������� �������� �� ���� ������ (���������� ������� �� �������)
        % P.S.: N = (n/t)/f, �� �� �� ����� f, ������� �������)
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