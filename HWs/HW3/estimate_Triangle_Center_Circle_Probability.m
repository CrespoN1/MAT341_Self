function prob = estimate_Triangle_Center_Circle_Probability(N)

%this initialzes our counter value at 0
count = 0;

%this for loop is establishing our random points and running for N
%iterations
for i = 1:N
    
    %this is creating our 3 points we are multiplying by 2pi because that
    %is how big the unit cirlce is 
    point(1) = 2*pi*rand();
    point(2) = 2*pi*rand();
    point(3) = 2*pi*rand();

    %this iscreating our data points into a vector 
    sortPoints = [point(1) point(2) point(3)];
    
    %this is sorting out our datavalues by least to greatest 
    sort(sortPoints);

    %this is just renaming the sorted points 
    newPoints = sort(sortPoints);

    %this if statement is finding the middle point inbetween our two other
    %points 
    if newPoints(2) < (newPoints(1) + pi)  && newPoints(2) >( newPoints(3) - pi)

        %this is just incrimenting our counter
        count = count + 1;

    end
    
end

%this is calculating the probabilty 
probability = count/N

