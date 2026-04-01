clc;
clear;
close all;

% =========================
% Parámetros
% =========================
fs = 10000;                 % Frecuencia de muestreo
t = linspace(0,1,fs);       % Vector de tiempo

fm = 5;                     % Frecuencia del mensaje
fc = 100;                   % Frecuencia de la portadora

% =========================
% Señal de mensaje
% =========================
mensaje = sin(2*pi*fm*t);

% =========================
% Señal portadora
% =========================
portadora = sin(2*pi*fc*t);

% =========================
% Modulación AM
% =========================
modulada = (1 + mensaje) .* portadora;

% =========================
% Ruido
% =========================
ruido = 0.3 * randn(size(t));
modulada_ruido = modulada + ruido;

% =========================
% Atenuación
% =========================
modulada_atenuada = 0.5 * modulada;

% =========================
% Gráficas
% =========================
figure;

subplot(2,2,1);
plot(t, mensaje);
title('Señal de Mensaje');
xlabel('Tiempo');
ylabel('Amplitud');

subplot(2,2,2);
plot(t, modulada);
title('Señal Modulada AM');
xlabel('Tiempo');
ylabel('Amplitud');

subplot(2,2,3);
plot(t, modulada_ruido);
title('Señal con Ruido');
xlabel('Tiempo');
ylabel('Amplitud');

subplot(2,2,4);
plot(t, modulada_atenuada);
title('Señal Atenuada');
xlabel('Tiempo');
ylabel('Amplitud');