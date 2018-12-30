function serial_readwrite()
clear;clc;

obj = serial('com1');
fopen(obj);
fprintf(obj,'blah..blah..');
[s,count,msg] = fscanf(obj);
fclose(obj);