clear
clc

[a,Fs,bits]=wavread('a.wav');
[e,Fs,bits]=wavread('e.wav');
[i,Fs,bits]=wavread('i.wav');
[o,Fs,bits]=wavread('o.wav');
[u,Fs,bits]=wavread('u.wav');

a = a/max(max(abs(a)));
e = e/max(max(abs(e)));
i = i/max(max(abs(i)));
o = o/max(max(abs(o)));
u = u/max(max(abs(u)));

a=u;
fs = [];
t = 0:1/Fs:2-(1/Fs);
for k = 1:22050
//    disp(k)
    fs(:,$+1) = a*exp(2*%pi*%i*k*t');
end

limiar=100;;


a1 = find(abs(fs(1,:))>limiar)
a11 = [a1;imag(fs(1,a1))/Fs];
a1 = [a1;real(fs(1,a1))/Fs];
a2 = find(abs(fs(2,:))>limiar)
a22 = [a2;imag(fs(2,a2))/Fs];
a2 = [a2;real(fs(2,a2))/Fs];


y=[0*t;0*t];
for i=1:min([size(a1,2) size(a2,2) size(a22,2) size(a11,2)])
    y = y+[a1(2,i)*cos(2*%pi*a1(1,i)*t)+a11(2,i)*sin(2*%pi*a11(1,i)*t) ;a2(2,i)*cos(2*%pi*a2(1,i)*t)+a22(2,i)*sin(2*%pi*a22(1,i)*t)];
end
sound(y,Fs)
plot(y(1,:))
figure(2)
plot(real(fs(1,:)))
