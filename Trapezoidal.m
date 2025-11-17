%TRAPEZOIDAL CODE 
function [] = Trapezoidal(f,a,b,p1,p2)
disp('EXAMPLE 2')
P = [p1 p2]; syms x; F = f(x);
for z = 1 : 2
n = P(z)-1; h = (b-a)/n; sum = 0;
x = linspace(a,b,P(z));
for i = 1 : P(z)
    y(i) = round(f(x(i)),2);
end
for j = 2 : P(z)-1
    sum = sum + y(j);
end
I = (h/2) * (y(1) + (2*sum) + y(P(z)))
end
I_exact = int(F,a,b) % for exact value of integral

%For example 1 where x and y are aleady given
disp('EXAMPLE 1')
X = [1 2 3 4 5 6 7];
Y = [2.105 2.808 3.614 4.604 5.857 7.451 9.467]; 
L = [1 7];
n = size(X,2) - 1; h = (L(2)-L(1))/n; sum = 0;
for j = 2 : n
    sum = sum + Y(j);
end
I = (h/2) * (Y(1) + (2*sum) + Y(n+1))
end