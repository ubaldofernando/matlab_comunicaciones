recObj = audiorecorder;
disp('start record'); recordblocking(recObj,5);
disp('fin grab');
play (recObj);
y=getaudiodate(recObj);
plot(y);