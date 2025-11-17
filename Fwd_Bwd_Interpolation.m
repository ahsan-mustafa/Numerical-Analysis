x = input('enter the values of x: '); k = size(x,2);
z = input('enter the values of y: ');
X = input('enter the value of x at which interpolation is desired: ');
%FORWARD DIFFERENCE OPERATOR
fwd_matrix = zeros(k); y = z;
for i = 1 : k
    for j = 1 : (k-i)
        y(j) = y(j+1) - y(j);
        fwd_matrix(j,i) = y(j);
    end
end
disp('   x     y           dy(fwd)')
for a = 1:k
    fprintf('%5g %4g %4g',x(a), z(a), fwd_matrix(a,:))
    fprintf('\n')
end
%NEWTON GREGORY FORWARD DIFFERENCE FORMULA
    miu = (X-x(1))/(x(2)-x(1));
    sum = 0;
for i = 1 : k-1
    product = 1;
    for j = 0 : (i-1)
        product = product * (miu-j);
    end
    sum = sum + ((product * (fwd_matrix(1,i))) / factorial(i));
end
f = z(1) + sum; fprintf('f(%i) = %3.3f\n', X, f); 
fprintf('\n')
%BACKWARD DIFFERENCE OPERATOR
back_matrix = zeros(k); y = z;
for i = 1 : k
    for j = 1 : (k-i)
        y(j) = y(j+1) - y(j);
        back_matrix(i+j,i) = y(j);
    end
end
disp('   x     y           dy(back)')
for a = 1:k
    fprintf('%5g %4g %4g',x(a), z(a), back_matrix(a,:))
    fprintf('\n')
end
%NEWTON GREGORY BACKWARD DIFFERENCE FORMULA
    V = (X-x(k))/(x(2)-x(1));
    sum = 0;
for i = 1 : k-1
    product = 1;
    for j = 0 : (i-1)
        product = product * (V+j);
    end
    sum = sum + ((product * (back_matrix(k,i))) / factorial(i));
end
f = z(k) + sum; fprintf('f(%i) = %3.3f\n', X, f); 