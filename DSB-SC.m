clc;                                                            %cuantis
clear all;

fs=1000; %frecuencia de muestreo
t=0:1/fs:1;
fm=4;
Am=1;
m=Am*cos(2*pi*fm*t);
figure(1)
subplot(3,1,1)
plot(t,m)
title('senial mensaje fm= ',num2str(fm),'Hz')
xlabel('tiempo')
ylabel('amplitud')

%portadora
fc=100;
Ac=2;
c=Ac*cos(2*pi*fc*t);
subplot(3,1,2)
plot(t,c)
title('senial mensaje fc= ',num2str(fc),'Hz')
xlabel('tiempo')
ylabel('amplitud')


% Am con portadora
xa=(Ac + m)*cos(2*pi*fc*t);
figure(2)
plot(t,xa)

