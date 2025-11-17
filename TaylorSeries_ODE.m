syms x y
f_1st_deriv = input('enter 1st derivative function f(x,y): ');
x0 = input('enter initial value of x: ');
y0 = input('enter initial value of y(x0): ');
h = input('enter interval: ');
xend = input('enter value of x to be reached: ');
X = x0:h:xend; Y(1) = y0;
L = length(X);
disp('    x         y  ');
for i = 1:L
    f_2nd_deriv = diff(f_1st_deriv,x) + (diff(f_1st_deriv,y)*f_1st_deriv);
    value1 = subs(f_1st_deriv,[x y],[X(i) Y(i)]);
    value2 = subs(f_2nd_deriv,[x y],[X(i) Y(i)]);
    Y(i+1) = Y(i) + (h*value1) + (((h^2)/2)*value2);  
    fprintf('%2.5f %10.5f\n', X(i), Y(i));
end
