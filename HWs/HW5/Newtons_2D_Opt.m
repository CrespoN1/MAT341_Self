function N = Newtons_2D_Opt(tol)

%this is initializing our values 
x0 = [-4.5;4.5];
x1 = [0;0];
err = 1;
N = 0;

%this while loop is running until our err is greater than our tol 
while err>tol
    
    %this is incrimenting N
    N = N + 1;
    
    %this is using the hessian to calculate our values 
    x1 = x0 - Hessian(x0(1),x0(2))*grad(x0(1),x0(2));
    
    %this is creating the squartroot equation 
    err = sqrt(((x1-x0).')*(x1-x0));
    
    %this is setting our new value equal to our old value
    x0 = x1;
    
end

%this shows our answer
N

err

x0

%this function is creating the hessian 
function val = Hessian(x,y)

val = inv([sin(x),0;0,cos(y)]);



%this function is greating the grad equation 
function val = grad(x,y)

val = [-cos(x);sin(y)];



%A) it takes 5 iterations to find a min of x0 = (-4.7124;0)

%B) it takes 4 iterations to find x0 = (-4.7124; 0)
