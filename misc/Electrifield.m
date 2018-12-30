function Electrifield (W)   
c = 3e+8;
x = 0 : .001 : 10 ;
t = 0 : .001 : 10 ;
B = W/c;
Bx = B * x;
Wt = W * t;
[BX,WT] = meshgrid(Bx,Wt);
E = cos(WT - BX);
%mesh(E);
surf(BX,WT,E);
%axis square;
xlabel('X');
ylabel('t');
zlabel('E');
grid on
end
