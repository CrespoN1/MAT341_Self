function N = Newtons_1D_Opt(tol)

%this is initializing our values and establishing our Xn values
err = 1;
xn = 0.25;
N = 0;

%This while loop is going to keep running until our err is greater than our
%tol. Also what this loop is doing is running our newtons method
while err > tol 
    
    %This is incrimenting our N value and this counter is telling us how
    %many times our while loop runs or iterates to find the value we need
    N = N + 1;
    
    %this code is newtons method we are subtracting the previous iteration
    %from F prime divided by F double prime 
    xn1 = xn - (fp(xn)/fpp(xn));
    
    %this is calculating our err value 
    err = abs(xn1 - xn);
    
    %this is setting the current value we obtain to be the next value we
    %use in newtons method 
    xn = xn1;
    
end

%prints out our xn value
xn;

%Prints out the amount of iterations it took 
N;

%this function is running our original function 
function val = f(x)

val = 0.5-x*exp(-x^2);

%This function is running our F prime function 
function val = fp(x)

val = -exp(-x^2) + 2*exp(-x^2)*x^2;

%this is running our F double prime function 
function val = fpp(x)

val = -4*exp(-x^2)*x^3 + 6*exp(-x^2)*x;


%A) it takes 6 iterations. 

%B) it takes 736 iterations 
