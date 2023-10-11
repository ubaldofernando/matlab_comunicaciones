clc;
close all;
clear all;

% am 


fs=100;
t=0:1/fs:100;
fm=1;
fc=10;
x=cos(2*pi*fm*t);
figure(1)
subplot(3,1,1);
plot(t,x)
title('senial de entrada')
xlabel('tiempo')
ylabel('amplitud')


y1= ammod(x,fc,fs);  % doble banda lateral
subplot(3,1,2);
plot(t,y1)

%%
y2=ssbmod(x,fc,fs);  % doble banda lateral
step(sa,y2)