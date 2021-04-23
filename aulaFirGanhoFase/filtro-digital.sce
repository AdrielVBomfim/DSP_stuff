 //Lendo o arquivo AI
 [x,fa] = wavread('ai.wav');
 y = zeros(1, fa);
 //Definindo valores
 ro = 0.997;
 fase = %pi/8; //frequencia do filtro
//Equação da diferenças do filtro
for n = 1 : fa
  y(n+2) = x(n+2) + 2*ro*cos(fase)*y(n+1) -ro*ro*y(n);
end

//Escutar audio:
//Saida
sound(y/max(abs(y)) , fa);
//Entrada
//sound(x/max(abs(x)) , fa);