
fm=44100;
a=audiorecorder(fm, 16,2);
record(a,3);
pause(3);
b=getaudiodata(a);
%play(b,fm);
sound(b);
figure(1);
plot(b);
c = fft(b);
figure(2);
plot(abs(c));
figure(3);
plot(a);