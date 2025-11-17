function [] = Interpolation()
x = input('Enter value of x at which interpolation desired: ');  
n = input('Enter degree of polynomial: ');        
xi = input('Enter values for Xi in single row matrix form: ');
fxi = input('Enter values for f(Xi) in single row matrix form: ');
sum = 0;
for i = 1 : n+1
    product = 1;
    for j = 1 : n+1
        if j ~= i
            xj = xi(j);
            product = product * ((x - xj) / (xi(i) - xj));
        end
    end
    sum = sum + (fxi(i) * product);
end
fprintf('Value of the function f(x) when x = %0g is: %0.4f ' , x, sum)
end