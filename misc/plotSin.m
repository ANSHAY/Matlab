function plotSin(f1,f2)
    x=linspace(0,2*pi,f1*16+1);
    y=linspace(0,2*pi,f2*16+1); 
    if nargin == 1
    z=sin(f1*x);
    plot(x,z,'--sr',...
            'LineWidth',2,...
            'MarkerFaceColor','k',...
            'MarkerEdgeColor','r')
elseif nargin == 2
    [X,Y]=meshgrid(x,y);
    Z=sin(f1*X)+sin(f2*Y);
    subplot(2,1,1)
    imagesc(Z);
    colorbar;
    colormap(hot);
    axis xy;
    subplot(2,1,2);
    surf(X,Y,Z)
end
