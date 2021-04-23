clear;

[a, fa] = wavread('a.wav');
a = (a(1,:) + a(2,:)) / 2;
N = length(a);
k = 1;

for f = 1 : (fa/2)/1000 : fa/2
  B(k, 1:1000) = exp(%i * 2 * %pi * f * [0:999] / fa);
  k = k + 1;
end
//for f = 1:4000
//  r = exp(%i * 2 * %pi * f * [0:2 * fa - 1] / fa);
//  teste(f) = abs(sum(a .* r) * 2 / N);
//end

s = a(1, 10001:11000);
S = B * s';
plot(abs(S));
det(B)