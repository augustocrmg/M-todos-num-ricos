clear all;dF=inline('x-y');
h=0.5; N=3;
x(1) = 0; y(1) = 1;
for i = 1:N
 x(i+1) = x(i) + h;
 yEU=y(i) + dF(x(i),y(i))*h;
 y(i+1) = y(i) + (dF(x(i),y(i))+dF(x(i+1),yEU))*h/2;
end
x
y
error=x+2*exp(-x)-1-y