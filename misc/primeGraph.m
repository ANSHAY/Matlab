% n=1000;
% p=primes(n);
% for k=0.1:0.1:10
% t=k*(1:length(p));
% polar(t,p);
% input('more?');
% k
% end
i=0.5;
%i=60*pi/180;
    m=50;
%     p=1:m;
%     p=primes(m);
    p=fibonacci(m);
for i=0.1:0.1:15
    %p=primes(m);
    t=i*(1:length(p));
    %t=2*pi*t;%/max(t);
    polar(t,p);
    input('more?');
end