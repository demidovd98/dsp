%%%%% Comments:

%-%-%


%%%%% Main:

%%% Paragraph 2.1: 
% Topic: Proof of: sin(2*pi*f*n*ts) = sin(2*pi*(f+k*fs)*n*ts), or f2 = f1+k*fs
    % P. S.: sin(2*pi*f*n*ts) => sin(2*pi*f*n*ts+2*pi*m) =>
        % => sin(2*pi*(f+m/(n*ts))*n*ts) => k=m/n =>
        % => sin(2*pi*(f+k*fs)*n*ts)
        
% Code:
Amp = 1; % ��������� ������� (����. �������� �� y)
f1 = 7000; % ������� ���������� ������� (f ��� � �������, ��)
f2 = 1000;
fs = 6000; % ������� ������������� (fs �������� � �������, ��)
ts = 1/fs; % ������ ������������� (����� ����� ��������� fs, ���.)
t = 0.001; % ������������ ����� ������� � �������� (��� �������, ���.)
n = t/ts; % ���������� ���������� �������� (n �������� �� �� �����, ��.)

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