N = 256

for n=1:N
  C(n, 1:3) = (n - 1) / 255;
end

b3=cos(2*%pi*3*[0:99]/100);
b4=cos(2*%pi*4*[0:99]/100);

x = b3'*b4;
pinte(x);

//b = cos(2*%pi*2*[0:99]/100);
//plot(b);
//size(b);

//xset('colormap', C);
//Matplot(b);