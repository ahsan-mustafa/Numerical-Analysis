%SIMPSON'S 1/3 RULE
function [] = Simpson_1by3(f,a,b,n) %a and b are limits while n is the number of intervals
h = (b-a)/n;
x = linspace(a,b,n+1);
syms X; f=f(X); fx=subs(f,X,x);
sum1 = 0; sum2 = 0;
for i = 2:n
    if rem(i,2) == 0
        sum1 = sum1 + fx(i);
    else
        sum2 = sum2 + fx(i);
    end
end
I = (h/3) * (fx(1) + (4*sum1) + (2*sum2) + fx(n+1));
fprintf('I = %0.4f',I)
end