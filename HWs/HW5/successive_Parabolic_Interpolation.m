function N = successive_Parabolic_Interpolation(tol)

%this is initializing our values
N = 0; 
err = 1;

x1 = 0;
x2 = 0.6;
x3 = 1.2;

% interval to pick initial 3 pts
% a = 0;
% b = 2;

%this while loop is running while our error value is less than our
%tolerance value
while err>tol
    
    %this is incrimenting our N value
    N = N + 1; 
    
    %this is creating our A matrix
    A = [x1^2 x1 1;x2^2 x2 1;x3^2 x3 1];
    
    %this is inverting our matrix
    coef = inv(A)*[f(x1) f(x2) f(x3)]';
    
    %this is setting our inverse values
    a = coef(1);
    b = coef(2);
    
    %this is finding the vertex of the graph that we are creating 
    vertex = -b/(2*a);
    
    %this is setting our values eaqual to the previous points to help
    %create more points 
    x3 = x2;
    x2 = x1;
    x1 = vertex;
    
    %this prints our our error value 
    err = abs(x3 - x1);
    
end

N;
    
     %this is calling in another function and solving for the points 
    function val = f(x)
    
    val = 0.5 - x*exp(-x^2);
    
    %A) it took 227 iterations to achieve the accuracy for 1e-8
    %B) when we changed the x3 value to 2 it takes only 29 iterations. It
    %does issue a warning saying that our matrix is singular which means
    %that matlab is trying its hardest to find a point close to our value
    %which is why we have alot of iterations. 
    
    
    
    