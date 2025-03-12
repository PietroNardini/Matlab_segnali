%grafico funzione sinc(t/T)
T=1;
t=linspace(-5,5,101);
x=sinc(t./T);
plot(t,x);

%grafico funzione sinc(t/T)*2

T=1;
t=linspace(-5,5,101);
x=sinc(t./T).^2;
plot(t,x);

%grafico di modulo e argomento
T=1
f = linspace(-10, 10, 1000);
H = T ./ (1 + 1j * 2 * pi * f * T);

magnitude = abs(H);
phase = angle(H);

% Plot Magnitude
subplot(2,1,1);
plot(f, magnitude, 'b', 'LineWidth', 2);
xlabel('Frequency (f)');
ylabel('|H(f)|');
title('Magnitude Spectrum');
grid on;

% Plot Phase
subplot(2,1,2);
plot(f, phase, 'r', 'LineWidth', 2);
xlabel('Frequency (f)');
ylabel('∠H(f) [rad]');
title('Phase Spectrum');
grid on;