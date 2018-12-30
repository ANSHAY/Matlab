N = 10000;
M = 500;
n = 0:N-1;
x = zeros(1, N);
for i=1:M
    x(i) = i;
    x(M+i) = M-i;
end

X = fft(x);
stem(n-N/2, fftshift(abs(X)));