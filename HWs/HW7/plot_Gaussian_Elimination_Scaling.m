function plot_Gaussian_Elimination_Scaling()

%create a vector made of the N values 
NVec = 2:1:100;

%initialize the operation vector 
opCountVec = []; 

%this for loop is going to keep running until it reaches the end of the
%length of the vector 
for i=1:length(NVec)
    
    %this is creating our new vector 
    opCountVec(i) = go_Go_Gaussian_Elimination(NVec(i));
    
end


%this is setting our line-width
lw = 5; 

%this is setting our color
color = 'blue'; 

%this is making both plots
figure(1);

%we are using a loglog function to make it look more logerithmic 
loglog(NVec,opCountVec,'Color',color,'LineWidth',lw)

%this is graphing our x and y labels 
xlabel('Matrix Dimension: N')
ylabel('Operation Count')

figure(2);

%This is plotting our vector points 
plot(NVec,opCountVec,'Color',color,'LineWidth',lw)

%this is labeling our x and y axes 
xlabel('Matrix Dimension: N')
ylabel('Operation Count')


%A) As the size of our matrix increases the number of operations to get to
%its reduced echlon or echlon form also increases. essentially the relatio
%is that since this is a log(Ops) = mlog(N) so we can essentially find our
%value of N and we can plug that into our function to find our relation.
