A = 1;  % Ampiezza del segnale
T0 = 1; % Periodo fondamentale
K = 10; % Numero di armoniche considerate
t = linspace(-1.5, 1.5, 1000); % Tempo normalizzato

% Segnale ideale
xIdeale = A * abs(cos(2 * pi * t / T0));
disp(xIdeale);

% Calcolo della serie di Fourier troncata
xApprossimante = zeros(size(t));
for k = 1:K
    Ck = (A * (k == 1));  % Coefficiente di Fourier (solo per k=1)
    xApprossimante = xApprossimante + Ck * cos(2 * pi * k * t / T0);
end

% Grafico
figure;
plot(t, xIdeale, 'k', 'LineWidth', 1.5); hold on;
plot(t, xApprossimante, 'r', 'LineWidth', 2.5);
grid on;


% Configurazione grafico
xlabel('Tempo normalizzato, t/T_0', 'FontSize', 12);
legend('Segnale ideale x(t)', sprintf('Serie di Fourier K=%d', K), 'FontSize', 11);
title(sprintf('Serie di Fourier per x(t) = A cos(2\\pi t / T_0) con K=%d', K), 'FontSize', 14);
axis([min(t), max(t), -1.5, 1.5]);