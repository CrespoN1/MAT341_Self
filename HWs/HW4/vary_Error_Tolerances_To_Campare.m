function vary_Error_Tolerances_To_Campare()

%this is the vector that we are trying to call
errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];

%this for loop is running our errTolVec and running the for loop from the
%first itterate till the end of the vector
for i = 1:length(errTolVec)
    
    %this is calling in both our different functions and creating another
    %vector and itterating it till it reaches the end of i
    errVec(i) = successive_Parabolic_Interpolation(errTolVec(i));
    
    goldVec(i) = golden_Search(errTolVec(i));
    
end
 
%this is ploting both graphs and comparing each new vector to one another.
%But it is comparing both solutions in log form and semi log form 
figure(1); semilogx(errTolVec,goldVec,'blue','LineWidth',5); hold on; semilogx(errTolVec,errVec,'red','LineWidth',5); hold off
xlabel('error Tolerance')
ylabel('Number of Iterations')
legend('Golden Search', 'Parabolic Interpolation')
figure(2); loglog(errTolVec,errVec,'blue','LineWidth',5); hold on; loglog(errTolVec,goldVec,'red','LineWidth',5);hold off
xlabel('error Tolerance')
ylabel('Number of Iterations')
legend('Golden Search', 'Parabolic Interpolation')

%A) the parabolic line converges faster than the golden search values for
%less itterates. 
%B) when you increase the accuracy threshold the number of iterations it
%takes to get to or close to the error tolerance increases for both. as the
%error decreases the methods become less effective because it takes more
%iterations to find a value close to our threshold
    
    
    
    
    
    
    