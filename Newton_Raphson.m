%Newton(@(x) (exp(x) - (3*x)),0)
function [] = Newton(f,a)
syms x
xn=a; tol=0.001; N=20; eq=f(x);
fderiv = diff(eq);
f1 = f(xn);
f2 = subs(fderiv,x,xn);
disp('  n         xn        f(xn)       fderiv(xn)     xroot')
for n = 0:N
    xroot = xn - (f1/f2);
    fprintf('%3i %12.5f %12.5f %12.5f %12.5f \n', n,xn,f1,f2,xroot)
    if abs(xroot-xn) <= tol
        fprintf('Iteration Count = %g\n', n)  
        fprintf('Root = %g\n', xroot)
        break
    elseif n==N
        fprintf('Root not obtained in %1i iterations',N)
    end
    xn = xroot;
    f1 = f(xn);
    f2 = subs(fderiv, x,xn);
end
end