
function prob = estimate_Coin_In_Square_Probability(r,N)

%this initializes our countFlip value
countFlip = 0;

%this for loop is running from 1 to N times
for j = 1:N 
    
    %this is initializing our x and y values 
    x = rand;
    y = rand;
    
    %this if statement is creating the so called box or grid and if the
    %coin is witihn the box to count that 
    if ((x-r>0) && (x+r<1) && (y-r>0) && (y+r<1))
        
        %this is just incrimenting our count value 
        countFlip = countFlip + 1;
        
    end
    
end

%this is calculating the probability (it is taking the amount of times the
%coin was fliped and dividing it by the N times it took) 
prob = countFlip/N


    
    
    
    