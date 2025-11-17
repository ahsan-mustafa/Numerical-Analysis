%bisection(@(x) ((x^3)-x-1),1,2)
function [] = bisection(f, p1, p2)
x1 = p1; x2 = p2; max=30; tol=0.001;
f1 = f(x1); f2 = f(x2);
if f1 * f2 > 0
    disp('there is no root in given interval')
else
    disp('  i         x1        x2         xm        fx') 
for i = 1:max
    if abs(f1)<=tol
            fprintf('the root is %1.5f\n', x1)
        break
    elseif abs(f2)<=tol
            fprintf('the root is %1.5f\n', x2)
        break
    end
    xm = (x1 + x2)/2;
    fx = f(xm);
    fprintf('%3i %12.5f %10.5f %10.5f %10.5f \n', i,x1,x2,xm,fx)
    if abs(fx)<=tol
        fprintf('the root is %0.5f\n', xm)
        break
    elseif (f1 * fx) < 0
        x2 = xm;
    else
        x1 = xm;
    end
end
end
end

%{
function [] = NumericalAnalysisTesting(f, p1, p2)
x1 = p1; x2 = p2; max=30; tol=0.001;
f1 = f(x1); f2 = f(x2);
if f1 * f2 > 0
    disp('there is no root in given interval')
elseif abs(f1)<=tol
    fprintf('As the initial x meets tolerance, the root is %1.5f\n', x1)
elseif abs(f2)<=tol
    fprintf('As the initial x meets tolerance, the root is %1.5f\n', x2)
else
disp('  i         x1        x2         xm        fx') 
for i = 1:max
    xm = (x1 + x2)/2;
    fx = f(xm);
    fprintf('%3i %12.5f %10.5f %10.5f %10.5f \n', i,x1,x2,xm,fx)
    if abs(fx)<=tol
        fprintf('the root is %0.5f\n', xm)
        break
    elseif (f1 * fx) < 0
        x2 = xm;
    else
        x1 = xm;
    end
end
end
end
%}