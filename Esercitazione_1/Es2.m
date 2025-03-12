%1)
syms t T;

% Funzione sinc(t/T)
f = sinc(t/T);

% Calcolo dell'energia simbolicamente (integrale della funzione sinc al quadrato)
E_sinc = int(f^2, -Inf, Inf);

% Sostituisci un valore per T (ad esempio T = 1)
E_sinc_numeric = double(subs(E_sinc, T, 1));

fprintf('Energia di sinc(t/T) tramite integrazione simbolica per T=1: %.4f\n', E_sinc_numeric);
%2)

% Funzione sinc^2(t/T)
f = sinc(t/T).^2;

% Calcolo dell'energia simbolicamente (integrale della funzione sinc al quadrato)
E_sinc = int(f^2, -Inf, Inf);

% Sostituisci un valore per T (ad esempio T = 1)
E_sinc_numeric = double(subs(E_sinc, T, 1));

fprintf('Energia di sinc(t/T)^2 tramite integrazione simbolica per T=1: %.4f\n', E_sinc_numeric);

%3)

T0 = 1;  % Periodo
t = linspace(0, T0, 1000);  % Vettore di tempo su un periodo
f = cos(2*pi*t/T0);  % Funzione coseno

% Calcolo della potenza media
P_media = mean(f.^2);  % Media del quadrato della funzione

% Stampa del risultato
disp(['La potenza media è: ', num2str(P_media)]);

%4)

T0 = 1;  % Periodo
t = linspace(0, T0, 1000);  % Vettore di tempo su un periodo
f = cos(2*pi*t/T0).^2;  % Funzione coseno

% Calcolo della potenza media
P_media = mean(f.^2);  % Media del quadrato della funzione

% Stampa del risultato
disp(['La potenza media è: ', num2str(P_media)]);