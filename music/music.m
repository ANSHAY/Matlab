function music(Fs,freq,time)
%%% Fs: sampling frequency, freq: frequency of sign wave, time: duration of
%%% run
    y = sin(linspace(0, 2*pi*freq*time, Fs*time));
    sound(y,Fs);
end