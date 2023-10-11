clear all
clc
load handel.mat
Fs=44100;     % frecuencia de muestreo
y = audiorecorder(3*Fs,16,1);  % para grabar voz por 3 segundos
audiowrite('voz.wav',y,Fs,16);   %guarda la voz grabada
audioplayer(y,Fs);    %repoduce la voz
figure(1)
plot (y,'y')
title ('dominio en tiempo');
y1 = abs(fft(y));
figure(2)
plot((1:10000),y1(1:10000),'k')
title ('dominio de la frecuencia');
