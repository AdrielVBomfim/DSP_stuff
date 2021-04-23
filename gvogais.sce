clear
clc

load('frequencias')

function [re] = gera(a1,a11,a2,a22,t)
    re=[0*t;0*t];
for i=1:min([size(a1,2) size(a2,2) size(a22,2) size(a11,2)])
    re = re+[a1(2,i)*cos(2*%pi*a1(1,i)*t)+a11(2,i)*sin(2*%pi*a11(1,i)*t) ;a2(2,i)*cos(2*%pi*a2(1,i)*t)+a22(2,i)*sin(2*%pi*a22(1,i)*t)];
end
endfunction

Fs = 44100;
t = 0:1/Fs:(0.5-1/Fs);
a = gera(ina.a1,ina.a11,ina.a2,ina.a22,t);
e = gera(ine.a1,ine.a11,ine.a2,ine.a22,t);
i = gera(ini.a1,ini.a11,ini.a2,ini.a22,t);
o = gera(ino.a1,ino.a11,ino.a2,ino.a22,t);
u = gera(inu.a1,inu.a11,inu.a2,inu.a22,t);

t = 0:1/Fs:(0.2-1/Fs);
u1 = gera(inu.a1,inu.a11,inu.a2,inu.a22,t);
y = [o, u, a, u1, e, a, i, o];
