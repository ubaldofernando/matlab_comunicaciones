fs=44100;
aviso=input('presione "s" para comenzara grabar: ','s');
if aviso=='s'
    y=audiorecorder(fs,8,1);
    disp('inicia la grabación');
    recordblocking(y,3);
    disp('fin grabación');
end;
play(y);
