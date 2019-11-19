function vary_StepSize_Gamma_To_Optimize()

%this is creating our gamma Vector 
gammaVec = [0.5:0.02:1.5];

%this is creating our for loop that is going to run from our first value to
%and it pulls from our gammaVec 
for i = 1:length(gammaVec)
    
    %this is setting our new vector and pulling from the previous code
    gVec(i) = Gradient_Descent_1(1e-10, gammaVec(i));
    
end

%this is plotting our vector using semilogx
figure(1); semilogx(gammaVec,gVec,'blue','LineWidth',5);
%This is labeling our axis 
ylabel('# of Iterations, N')
xlabel('Gamma Step-size')
legend('Fixed Step')

%A)when gamma is 1 it is the best step size 