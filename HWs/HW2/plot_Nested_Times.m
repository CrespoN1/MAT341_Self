function plot_Nested_Times()

%Here we are creating our vector and initializing our values

N = [1:1:10 20:10:100 125 150 175 200 225 250];

%this for loop is essentially calling in the calculate_For_Loop_Time and
%creating all the values it gets into two different vectors

%the for loop runs until it reaches the length of the N vector

for n = 1:length(N)

    time(n) = calculate_Nested_For_Loop_Time( N(n) );
end

%this is establishing the fontsize and width

lw = 4;
fs = 18;

%loglog function is it make the plot more logerithmic 

loglog(N,time,'m','LineWidth',lw);

%the xlabel and ylabel are meant to define what will be on our x and y axis

xlabel('n');
ylabel('Time');

%the leg function is creating the legend

leg = legend('Time');

%this is setting our fontsize 

set(gca,'FontSize',fs);

