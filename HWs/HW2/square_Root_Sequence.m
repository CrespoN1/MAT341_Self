function val = square_Root_Sequence(m,n)

%Here we are initializing our value and setting our value equal to the
%square root of (m)


val = sqrt(m);

%This for loop is telling our program to run until it reaches the nth value

for j = 2:n
    
    %this if els statement is running within the for loop telling the
    %program that after the modular arithmatic if it gets a value that is equal to
    % 0 to make it equal to -1 and if the value is not equal to o to make
    % it equal to 1
    
    if mod(n,2)==0
        
        x = -1;
        
    else 
        
        x = 1;
        
    end
    
    %this is printing out our value and computing the sequence 
    
    val = sqrt(m + (-1)^j*x*val);
    
end

end 

%1) for the square root of sequence of (13,100) the value converges to 3 for
%some large n value
%
%2) for the square root of sequence of (31,100) the value converges to 5
%for some large value of n
%
%2) for the square root of sequence of (43,100) the value converges to 6
%for some large value n