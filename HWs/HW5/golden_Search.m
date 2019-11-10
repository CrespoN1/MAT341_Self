function N = golden_Search(tol)

%this is initializing our values 
err =1;
T = (sqrt(5)-1)/2;
a = 0;
b = 2;
N = 0;

%this is creating our equations and we are putting in our new values into
%these equations
x1 = a + (1-T)*(b-a);
x2 = a + T*(b-a);
f1 = f(x1);
f2 = f(x2);

%this while loop runs while our err value is less than our tolerance 
while err>tol
    
    %this is incrimenting our N value 
    N = N + 1;
    
    %this if statement is running when our f1 value is greater than our f2
    %value. 
    if f1 > f2
        
        %essentially what this is doing is passing on the values onto each
        %other. What I mean by that is that if x1 is greater than x2 its
        %going to pass that value on to x2 and so on and so forth
        a = x1;
        
    
        x1 = x2;
        
      
        f1 = f2;
        
        
        x2 = a + T*(b-a);
        
        f2 = f(x2);
        
    else
        b = x2;
        
        x2 = x1;
        
        f2 = f1;
        
        x1 = a + (1-T)*(b-a);
        
        f1 = f(x1);
        
    end
    
    %this is printing out our error value
    err = b-a;
end
    
%this function is calling in our formula and implementing it
    function val = f(x)
    
    val = 0.5-x*exp(-x^2);
    
    %there were 40 iterations 
    

    



