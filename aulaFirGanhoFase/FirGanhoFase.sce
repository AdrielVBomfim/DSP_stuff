fa = 8000

x = sin(2*%pi*500*(1/fa)*[0:2*fa-1]);

for n = 3 : 2*fa-1
  y(n - 2) = x(n) - 0.1*x(n - 1) + 0.9*x(n - 2);
end

plot(x);
plot(y, 'r');
