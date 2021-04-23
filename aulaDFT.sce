clear;

N = 100;
W = exp(2 * %pi * %i / N);

for m = 0:N - 1
  for n = 0:N - 1
    F(m + 1, n + 1) = W^(-m * n);
  end
end

det(F)