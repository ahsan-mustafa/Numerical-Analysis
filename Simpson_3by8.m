%SIMPSON'S 3/8 RULE
function [] = Simpson_3by8(f,a,b,n) %a and b are limits while n is the number of intervals
h = (b-a)/n;
x = linspace(a,b,n+1);
syms X; f=f(X); fx=subs(f,X,x);
sum1 = 0; sum2 = 0;
for i = 1:n-1
    if (rem(i,3) ~= 0)
        sum1 = sum1 + fx(i+1);
    else
        sum2 = sum2 + fx(i+1);
    end
end
I = ((3*h)/8) * (fx(1) + (3*sum1) + (2*sum2) + fx(n+1));
fprintf('I = %0.4f',I)
end