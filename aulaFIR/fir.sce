//Lendo o arquivo AI
[x,fa] = wavread('H:\UFS\PDS\FIR\ai.wav');
//Calculando o valor de atraso
delta = round((30/340)*fa);
//Alocando zeros na saida
y1 = zeros(1, length(x) + delta);
y2 = zeros(1, length(x) + delta);
y3 = zeros(1, length(x) + delta);
y4 = zeros(1, length(x) + delta);

//Metodo 01
y1(1:length(x)) = x;
y1(973:973+length(x)-1) = y1(973:973+length(x)-1)+0.9*x;
//sound(y1/max(abs(y1)) , fa);


//Metodo 02
//Utilizando convolução
h(1) = 1;
h(delta) = 0.9;
y2 = convol(h,x);
//sound(y2/max(abs(y2)) , fa);


//Exercicio utilizando diversas replicas no h
//Metodo 01
y3(1:length(x)) = x;
y3(973:973+length(x)-1) = y3(973:973+length(x)-1)+0.9*x+0.8*x+0.7*x+0.6*x+0.5*x+0.4*x ;
//sound(y3/max(abs(y1)) , fa);

//Metodo 02
//Utilizando convolução
h(1) = 1;
h(delta) = 0.9;
h(2*delta) = 0.8;
y4 = convol(h,x);
sound(y4/max(abs(y4)) , fa);

