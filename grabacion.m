fs=44100;
aviso=input('presione "s" para comenzara grabar: ','s');
if aviso=='s'
    y=audiorecorder(fs,8,1);
    disp('inicia la grabaci�n');
    recordblocking(y,3);
    disp('fin grabaci�n');
end;
play(y);
