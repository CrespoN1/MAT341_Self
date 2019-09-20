function calculate_Pi_Sums()

%we are first initializing our values for the first sequence we need to
%initialize our tolarence value and establish the criteria for how big the
%error value should be

NA = -1;
tol = 10^-6;
err = 1;

%this while loop is running all the values until it gets the value thats
%the closest at approximating pi

while err>tol 
   
    %this incriments our N value 
    
    NA = NA + 1;
    
    sumA = 0;
    
    %this for loop is creating the sumation 
    
    for n = 0:NA
    
        sumA = sumA + (6/(sqrt(3)))*(-1)^n/((3)^n*(2*n+1)); 
    
    end
   
    %this is printing out the difference between our sum and pi to give us
    %the error between the two
    
    err = abs(sumA-pi);

end 

%this is printing out the N value that approximated pi the best 

NA

%We are initializing our values

NB = -1;
err = 1;

%this while loop is running all values until it gets one value that
%approximates Pi the best

while err>tol
   
    %This is incrimenting our N value
    
    NB = NB + 1;
    
    sumB= 0;
 
    %this loop is creating the summation
    
    for n = 0:NB
    
        sumB = sumB + 16*( (-1)^n /( 5^(2*n+1) * (2*n+1) ) ) - 4*( (-1)^n/((239)^(2*n+1)*(2*n+1)));
    
    end
    
    %this is printing out the error value 
    
    err = abs(sumB-pi);
    
end

%this is printing out what Incriment value was closest to approximating pi

NB

err = abs(pi-sumB)