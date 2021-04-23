[x,fa] = wavread('ai.wav');

dn = 486;
aux = 1;

for k = dn:2*dn:150*dn
  h(k) = aux;
  aux = aux * 0.9;
end

y = convol(h,x);
sound(y/max(abs(y)) , fa)