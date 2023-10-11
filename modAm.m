clc;
close all;
clear all;

% am con portadora

m=1;

Am=5; % amplitud del mensaje
fm=2000; % frecuencia del mensaje
Tm=1/fm;
t=0:Tm/999:6*Tm;
ym=Am*cos(2*pi*fm*t);
figure(1)
subplot(3,1,1);
plot(t,ym)
title('Señal mensaje')

% portadora
Ac=Am/m;
fc=fm*10;
Tc=1/fc;
yc=Ac*cos(2*pi*fc*t);
subplot(3,1,2)
plot(t,yc)
grid on;
title('señal portadora')

%modulación AM en t
Y=(Ac + ym).*cos(2*pi*fc*t);
subplot(3,1,3)
plot(t,Y)
title('señal AM')
grid on

