%Newton_Equations(@(x,y) ((x^2) + (y^2) - 1), @(x,y) ((x^2) + ((y+2)^2) - 9),-1,2)
%Newton_Equations(@(x,y) (x+(2*y)-4), @(x,y) ((2*x)+(7*y)-10),1,0)
%Newton_Equations(@(x,y) ((x^3) + (y^2) + x - 0.715), @(x,y) ((x^2) + (y^3) - y - 0.523),1,0)
function [] = Newton_Equations (eq1, eq2, a, b)
syms x y;
N = 20; n=0; tol=0.0001;
f = eq1(x,y);
fxD = diff(f,x);
fyD = diff(f,y);
g = eq2(x,y);
gxD = diff(g,x);
gyD = diff(g,y);
xn = a; yn = b; %inital guess values
disp('  n         F        FxDerivative    FyDerivative        G        GxDerivative    GyDerivative       X         Y')
while n <= N
fval = subs(f,[x y], [xn yn]);
gval = subs(g,[x y], [xn yn]);
fxDval = subs(fxD, x, xn);
fyDval = subs(fyD, y, yn);
gxDval = subs(gxD, x, xn);
gyDval = subs(gyD, y, yn);
xroot = xn - ((fval*gyDval)-(gval*fyDval))/((fxDval*gyDval)-(fyDval*gxDval));
yroot = yn - ((gval*fxDval)-(fval*gxDval))/((fxDval*gyDval)-(fyDval*gxDval));
fprintf('%3i %12.5f %14.5f %14.5f %14.5f %14.5f %14.5f %13.5f %11.5f \n', n,fval,fxDval,fyDval,gval,gxDval,gyDval,xroot,yroot)
if abs(xroot-xn) <= tol && abs(yroot-yn) <= tol
        fprintf('Iteration Count = %g\n', n)  
        fprintf('The X Root = %0.5f\n', xroot)
        fprintf('The Y Root = %0.5f\n', yroot)
        break
elseif n==N
        fprintf('Root not obtained in %1i iterations',N)
end
xn = xroot; yn = yroot; n=n+1;
end