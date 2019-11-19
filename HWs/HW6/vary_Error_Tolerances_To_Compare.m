function vary_Error_Tolerances_To_Compare()

%this is the vector that we are trying to call
errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11];

%this for loop is running our errTolVec and running the for loop from the
%first itterate till the end of the vector
for i = 1:length(errTolVec)
    
    %this is calling in both our different functions and creating another
    %vector and itterating it till it reaches the end of i
    gradDes1Vec(i) = Gradient_Descent_1(errTolVec(i),1);
    gradDes2Vec(i) = Gradient_Descent_2(errTolVec(i));
    
end
 
%this is ploting both graphs and comparing each new vector to one another.
%But it is comparing both solutions in log form and semi log form 
figure(1); 
semilogx(errTolVec,gradDes1Vec,'blue',errTolVec,gradDes2Vec,'Red','LineWidth',5); 
xlabel('error Tolerance, tol')
ylabel('Number of Iterations, N')
legend('Fixed Step', 'Barzilai Borwein')
figure(2); 
loglog(errTolVec,gradDes1Vec,'blue',errTolVec,gradDes2Vec,'Red','LineWidth',5);  
xlabel('err tolerance, tol')
ylabel('Number of Iterations, N')
legend('Fixed Step', 'Barzilai Borwein')

%A) the fixed step size algorithm converges to the min faster

%B) when the step size gamma is changed to .5 Barzilai Borwein converges
%quicker

%C) the advantage of using Barzilai Borwein is that it takes less
%iterations to find the min compared to fixed step size. Also when you are
%given a different function, you do not need to find a new step size to
%minimize the iterations

%D) You should pick the Barzilai Borwein since you can decide what your
%gamma should be as opposed to finding the best gamma in fixed step size. 