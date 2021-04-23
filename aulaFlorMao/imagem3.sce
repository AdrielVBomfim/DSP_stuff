x = fscanfMat('flor.txt');
tamanho = size(x);

cores = graycolormap(256);
//cores(1:128,1:2) = 0;
//cores(128:256,2:3) = 0;

for n = 1:tamanho(1)
  F(n, 1:128) = exp((n - 1) * 2 * %pi * [0:127] / 128 * %i);
end

A = (1/tamanho(1)^2) * F * x * F';

//NA = (abs(A)>5) .* A;
NX = real(F'* A * F);
pinte(NX);
//pinte(log(abs(A)));
//surf(log(abs(A)));