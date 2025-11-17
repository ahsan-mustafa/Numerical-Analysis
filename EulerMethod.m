syms x y
f = input('enter function f(x,y): ');
x0 = input('enter initial value of x: ');
y0 = input('enter initial value of y(x0): ');
h = input('enter interval: ');
xend = input('enter value of x to be reached: ');
X = x0:h:xend; Y(1) = y0;
L = length(X);
disp('    x         y  ');
fprintf('%2.5f %10.5f\n', x0, y0);
for i = 2:L
    k = i-1;
    fvalue = subs(f,[x y],[X(k) Y(k)]);
    Y(i) = Y(k) + (h*fvalue);
    fprintf('%2.5f %10.5f\n', X(i), Y(i));
end