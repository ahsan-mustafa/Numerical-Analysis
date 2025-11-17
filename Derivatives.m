x = input('enter values of x in row matrix form: ');
fx = input('enter values of f(x) in row matrix form: ');
X = input('enter point at which derivative to be found: ');
i = find(x==X); 
%FORWARD DIFFERENCE FORMULA FOR FIRST DERIVATIVE
Deriv = (fx(i+1) - fx(i)) / (x(i+1) - x(i));
Error = abs(((Deriv - fx(i)) / fx(i)) * 100);
fprintf('Using Fwd Diff Formula, 1st derivative = %0.4f, error = %0.1f %%\n', Deriv, Error)
%BACKWARD DIFFERENCE FORMULA FOR FIRST DERIVATIVE
Deriv = (fx(i) - fx(i-1)) / (x(i) - x(i-1));
Error = abs(((Deriv - fx(i)) / fx(i)) * 100);
fprintf('Using Bckwd Diff Formula, 1st derivative = %0.4f, error = %0.1f %%\n', Deriv, Error)
%CENTRAL DIFFERENCE FORMULA FOR FIRST DERIVATIVE
Deriv = (fx(i+1) - fx(i-1)) / (x(i+1) - x(i-1));
Error = abs(((Deriv - fx(i)) / fx(i)) * 100);
fprintf('Using Central Diff Formula, 1st derivative = %0.4f, error = %0.1f %%\n', Deriv, Error)