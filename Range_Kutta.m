syms x y
f = input('enter function f(x,y): ');
x0 = input('enter initial value of x: ');
y0 = input('enter initial value of y(x0): ');
h = input('enter interval: ');
xend = input('enter value of x to be reached: ');
X = x0:h:xend;
Y(1) = y0; b = length(X); 
for i = 1 : b-1
    k1 = h * subs(f,[x y],[X(i) Y(i)]);
    k2 = h * subs(f,[x y],[X(i)+(h/2) Y(i)+(k1/2)]);
    k3 = h * subs(f,[x y],[X(i)+(h/2) Y(i)+(k2/2)]);
    k4 = h * subs(f,[x y],[X(i)+h Y(i)+k3]);
    K = (k1 + (2*k2) + (2*k3) + k4) / 6;
    Y(i+1) = Y(i) + K;
end
i = find(xend == X)
Y(i)
