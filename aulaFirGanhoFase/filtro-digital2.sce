 //Lendo o arquivo AI
 [x,fa] = wavread('ai.wav');
 k = 1;
 //Definindo valores
 //ro = 0.997;
 //fase = %pi/8; //frequencia do filtro
 //Equação da diferenças do filtro
 
for f = 0 : fa/2
  z0 = exp(%i*2*%pi*(f/fa));
  h0 = z0^2/((z0-0.9*exp(%i*%pi/4))*(z0-0.9*exp(-%i*%pi/4)));
  M(k) = abs(h0);
  F(k) = atan(imag(h0)/real(h0));
  k = k + 1;
end

subplot(2,1,1);
plot((0:fa/2), 20*log(abs(M)));
subplot(2,1,2);
plot((0:fa/2), F);

//Escutar audio:
//Saida
//sound(y/max(abs(y)) , fa);
//Entrada
//sound(x/max(abs(x)) , fa);