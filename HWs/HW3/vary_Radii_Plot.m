function vary_Radii_Plot()

%this is initialzing our value for N
N = 1e5;

%this is creating a vector for rVec
rVec = [0.01:0.005:0.10  0.1:0.01:0.5];

%this for loop is going to run starting at our first value until the it
%reaches the end of the length of rVec
for i = 1:length(rVec)

    %this is pulling the information from
    %estimate_Coin_In_Square_Probability and creating it into a new vector
    estimateVec(i) = estimate_Coin_In_Square_Probability(rVec(i),N);
    
end

%this is establishing the length and size of our line 
lw = 4;
fs = 18;

%plot function is it make the plot more logerithmic 

plot(rVec,estimateVec);

%the xlabel and ylabel are meant to define what will be on our x and y axis

xlabel('radius');
ylabel('probabilities');

%this is setting our fontsize 

set(gca,'FontSize',fs);

%2a 
%this does seem like a reasonable amount of trials because if you incriment
%N it converges 

% it is more difficult because we dont know the exact probability for what to expect for the coin being flipped in
%the grid but with the coin flip alone we knew to expect about a 50/50
%probability

%2b

%when r is:

%(these are approximations based on the graph)
%when r is 0.15 you get a probability of 0.5
%when r is 0.35 you get a probability of 0.1
%when r is 0.45 you get a probability of 0.01
