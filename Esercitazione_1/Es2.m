
%% Parametri
T1 = 1;  % Parametro per sinc
T0 = 2;  % Periodo per coseno
syms t k T

%% Calcolo dell'energia
sinc_fun = sinc(t/T1);
energia_sinc = integral(@(t) sinc(t/T1).^2, -Inf, Inf);
energia_sinc2 = integral(@(t) sinc(t/T1).^4, -Inf, Inf);

fprintf('Energia sinc(t/T1): %f\n', energia_sinc);
fprintf('Energia sinc^2(t/T1): %f\n', energia_sinc2);

%% Calcolo della potenza media
cos_fun = cos(2*pi*t/T0);
potenza_cos = integral(@(t) cos(2*pi*t/T0).^2, -T0/2, T0/2) / T0;
potenza_cos2 = integral(@(t) cos(2*pi*t/T0).^4, -T0/2, T0/2) / T0;

fprintf('Potenza media cos(2*pi*t/T0): %f\n', potenza_cos);
fprintf('Potenza media cos^2(2*pi*t/T0): %f\n', potenza_cos2);

%% Calcolo di un coefficiente della serie di Fourier
x_t = cos(pi*t/(2*T))^2 * rectangularPulse(-T, T, t);
T2=T*2; %periodo
Xk = int(x_t * exp(-1j*2*pi*k*t/T2), t, -T, T) / T0;
Xk = simplify(Xk);

fprintf('Coefficiente Xk della serie di Fourier:\n');
disp(Xk);