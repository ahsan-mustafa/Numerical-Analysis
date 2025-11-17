%falsi(@(x) ((x^2)-16),3,4.5)
function [] = falsi(f, p1, p2)
x1 = p1; x2 = p2; max=30; tolf=0.001;
f1 = f(x1);
f2 = f(x2);
if f1 * f2 > 0
    disp('there is no root in given interval')
else
    disp('  i         x1        x2         x0                 f1              f2                f0') 
for i = 1:max
    if abs(f1)<=tolf
            fprintf('the root is %f\n', x1)
        break
    elseif abs(f2)<=tolf
            fprintf('the root is %f\n', x2)
        break
    end
    x0 = x1 - ((f1*(x2-x1))/(f2-f1));
    f0 = f(x0);
    fprintf('%3i %12.5f %10.5f %10.5f %17.5f %17.5f %17.5f \n', i,x1,x2,x0,f1,f2,f0)
    if abs(f0)<=tolf
        fprintf('the root is %f\n', x0)
        break
    elseif (f2 * f0) <= 0
        x1 = x0;
        f1 = f0;
    else
        x2 = x0;
        f2 = f0;
    end
end
end
end