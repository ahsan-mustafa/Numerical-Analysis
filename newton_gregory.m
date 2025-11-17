%newton_gregory(@(x) (x^3)+(2*x)+1,5)
function [] = newton_gregory(f,k)
syms X
f = f(X);
x = [1:k]; 
z = subs(f,X,x); 
fwd_matrix = zeros(k);
%FORWARD DIFFERENCE OPERATOR
y = subs(f,X,x);
for i = 1 : k
    for j = 1 : (k-i)
        y(j) = y(j+1) - y(j);
        fwd_matrix(j,i) = y(j);
    end
end
disp('    x    z          dy(fwd)')
for a = 1:k
    fprintf('%5g %4g %4g',x(a), z(a), fwd_matrix(a,:))
    fprintf('\n')
end
fprintf('\n')
%BACKWARD DIFFERENCE OPERATOR
y = subs(f,X,x);
back_matrix = zeros(k);
for i = 1 : k
    for j = 1 : (k-i)
        y(j) = y(j+1) - y(j);
        back_matrix(i+j,i) = y(j);
    end
end
disp('    x    z          dy(back)')
for a = 1:k
    fprintf('%5g %4g %4g',x(a), z(a), back_matrix(a,:))
    fprintf('\n')
end