function vary_Error_Tolerances_To_Compare()

%this is the vector that we are trying to call
errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];

%this for loop is running our errTolVec and running the for loop from the
%first itterate till the end of the vector
for i = 1:length(errTolVec)
    
    %this is calling in both our different functions and creating another
    %vector and itterating it till it reaches the end of i
    errVec(i) = successive_Parabolic_Interpolation(errTolVec(i));
    goldVec(i) = golden_Search(errTolVec(i));
    NewtonVec(i) = Newtons_1D_Opt(errTolVec(i)); 
    
end
 
%this is ploting both graphs and comparing each new vector to one another.
%But it is comparing both solutions in log form and semi log form 
figure(1); semilogx(errTolVec, goldVec,'blue','LineWidth',5); hold on; semilogx(errTolVec, errVec,'red','LineWidth',5); hold on; semilogx(errTolVec, NewtonVec,'k','LineWidth',5); hold off
xlabel('Number of Iterations')
ylabel('error Tolerance')
legend('Golden Search', 'Parabolic Interpolation','Newtons Method')
figure(2); loglog(errTolVec, errVec,'blue','LineWidth',5); hold on; loglog(errTolVec, goldVec,'red','LineWidth',5); hold on; loglog(errTolVec, NewtonVec,'k','LineWidth',5);hold off
xlabel('Number of Iterations')
ylabel('error Tolerance')
legend('Golden Search', 'Parabolic Interpolation','Newtons Method')

%A) Newtons method seems to converge faster

%B) The algorithm does always converge quicker 

%C) if you changed the initial conditions you might be able to change the
%convergance rates. 
    
    
    
    
    
    
    