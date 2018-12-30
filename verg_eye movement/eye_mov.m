% Example2.1andFigure2.2Loadeyemovementdata,plot
% thedatathengenerateandplottheensembleaverage.
%
clc;clear;
%load verg1; %Geteyemovementdata;
data = rand(100000,1000);
Ts = .005; %Sampleinterval = 5msec
[nu,N] = size(data); %Getdatalength(N)
t = (1:N)*Ts; %Generatetimevector
%
%Plotensembledatasuperimposed
plot(t,data,'k');
%hold on;
%
%Constructandplottheensembleaverage
avg = mean(data); %Calculateensembleaverage
plot(t,avg-1,'.k'); % andplot,separatedfrom
% theotherdata
xlabel('Time(sec)'); %Labelaxes
ylabel('EyePosition');
plot([.43 .43],[0 5],'.k'); %Plothorizontalline
text(1,1.2,'AveragedData'); %Labeldataaverage
h = hist(avg,10);
plot(h)

