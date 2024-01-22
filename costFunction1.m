format long
options = optimset('Gradobj','on','Maxiter',100);
initialTheta = zeros(2,1);
[optTheta, functionval, exitflag] = fminunc(@costFunction, initialTheta, options);




function [jval,gradient] = costFunction(theta)
jval = (theta(1)-5)^2 + (theta(2)-5)^2;
gradient = zeros(2,1);
gradient(1) = 2*(theta(1)-5);
gradient(2) = 2*(theta(2)-5);
end
