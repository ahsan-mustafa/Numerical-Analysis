syms x y
f = input('enter function f(x,y): ');
x0 = input('enter initial value of x: ');
y0 = input('enter initial value of y(x0): ');
h = input('enter interval: ');
xend = input('enter value of x to be reached: ');
X = x0:h:xend; Y(1) = y0;
L = length(X);
disp(' i       x          z          y ');
fprintf('%2.0f %32.5f\n', x0, y0);
for i = 2:L
    k = i-1;
    fvalue = subs(f,[x y],[X(k) Y(k)]);
    z(i) = Y(k) + (h*fvalue);
    fvalue2 = subs(f,[x y],[X(i) z(i)]);
    Y(i) = Y(k) + ((h/2) * (fvalue + fvalue2));
    fprintf('%2.0f %10.5f %10.5f %10.5f \n', i-1, X(i), z(i), Y(i));
end