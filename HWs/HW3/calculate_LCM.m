function lcm_val = calculate_LCM(x,y)

%initializing our i values
i = 0;

%this is initializing our notFound value which we are going to use in our
%first while loop
notFound = 1;

%this while loop is going to run until notFound == 1
%It also getting all the values of xMult and initializing them
while notFound==1
    
    %this is incrimenting our i value 
    i = i+1;
    
    %this is setting our xMult = to the incriminted value and multiplying
    %it by our x value
    xMult = i*x;
    
    %this is initializing our j value
    j = 0;
    
    %we are initializing our yMult value to = our incrimented value
    %multiplied by our y value
    yMult = j*y;
    
    %this while loop is comparing our xMult and yMult values and going to
    %keep running until our yMult is less than or equal to xMult
    while yMult <= xMult
        
        %this is incrimenting our j value
        j = j+1;
        
        yMult = j*y;
        
        %we are using an if statement to say that once our x and y are
        %equal to stop running 
        if yMult == xMult
            
            %this is printing out our xMult 
            %Note: we could also print out our yMult but they are the same
            %value so it does not matter
            lcm = xMult
            
            %stops the while loop
            notFound=0;
            
        end
        
    end
    
end


