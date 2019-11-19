function N = Gradient_Descent_1(tol,gamma)

%this initialzies our values and this is setting what our first values are
x0 = [1.0, 1.5];

%this is establishing our err value
err = 1;

%this is establishing our N or iterations 
N = 0;

%this while loop is going to keep running until our tol is greater than our
%err alue 
while err > tol
    
    %this is incrimenting our N value 
    N = N + 1;
    
    %this is plugging in our value into the matrix 
    x1 = x0 - (gamma*G(x0));
    
    %this is creating our I^2 norm function 
    err = sqrt((x1-x0).' * (x1-x0));
    
    %this is setting our previous answer to our new answer 
    x0 = x1;
    
end

%this function is creating our gradient matrix 
function val = G(x)

val = [-cos(x(1)); sin(x(2))];

%A) 34

%B) 12

%C) 35