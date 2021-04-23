N = 256
//C = graycolormap(256);
for n=1:N
  C(n, 1:3) = (n - 1) / 255;
end

for linha = 1:100
B(linha, 1:100) = round(1 + (255 * (1 - cos((linha - 1)/100 * 2 * %pi))));
end

xset('colormap', C);
Matplot(B);

