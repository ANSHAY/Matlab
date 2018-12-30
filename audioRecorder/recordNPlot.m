recObj = audiorecorder(44100, 16, 2);
get(recObj)
input('start recording..')
record(recObj)
input('.')
stop(recObj)
play(recObj)
delete(recObj)