%grafico funzione sinc(t/T)
T=1;
t=linspace(-5,5,101);
x=sinc(t./T);
figure;
plot(t,x);

%grafico funzione sinc(t/T) senza funzione

T=1;
t=linspace(-5,5,101);
x=(sin(pi * t / T) ./ (pi * t / T));
figure;
plot(t,x);


%grafico funzione sinc^2(t/T)

T=1;
t=linspace(-5,5,101);
x=sinc(t./T).^2;
figure;
plot(t,x);

%grafico di modulo e argomento
T=1
f = linspace(-10, 10, 1000);
H = T ./ (1 + 1j * 2 * pi * f * T);

modulo = abs(H);
argomento = angle(H);

% Plot Magnitude
figure;
subplot(2,1,1);
plot(f, modulo, 'b', 'LineWidth', 2);
xlabel('Frequenza (f)');
ylabel('|H(f)|');
title('grafico del modulo');
grid on;

% Plot Phase
subplot(2,1,2);
plot(f, argomento, 'r', 'LineWidth', 2);
xlabel('Frequenza (f)');
ylabel('arg(H(f))');
title("grafico dell' argomento");
grid on;