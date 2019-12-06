function fit_Polynomial_Series()

%this is initializing our N value 
N = 250;

%this is creating or pulling in our xData and yData
xData = linspace(-2*pi,2*pi,N);
yData = cos(xData)'; 

%this for loop is going to run from 1 to the Nth term
for i = 1:N
    
    %this is creating our x and y vector 
    x = xData(i);
    y = yData(i);
    
    %this is creating or matrix 
    A(i,:) = [1 x x^2 x^3 x^4 x^5 x^6 x^7 x^8 x^9 x^10 x^11 x^12];
    
    B(i,:) = y; 
    
end

%this is finding the inverse of our matrix and setting it equal to our
%inverse value 
inverse = (inv(A'*A))*A';

%this is creating our Beta value which is equal to our inverse matrix times
%our B value 
Beta = (inverse)*B; 

%this for loop is going to run from 1 to N iterations 
for i = 1:N
    
    %this is creating our x vector and setting the matrix equal to our new
    %values of Beta 
    x = xData(i);
    f(i,1) = Beta(1) + Beta(2)*x + Beta(3)*x^2 + Beta(4)*x^3 + Beta(5)*x^4 + Beta(6)*x^5 + Beta(7)*x^6 + Beta(8)*x^7 + Beta(9)*x^8 + Beta(10)*x^9 + Beta(11)*x^10 + Beta(12)*x^11 + Beta(13)*x^12;
    
end

%this is plotting our data values 
figure; plot(xData, yData,'o','LineWidth',6); hold on; plot(xData,f,'R','LineWidth',4)
legend('Data','Best Poly Fit')

%this is labeling our axes
xlabel('xData')
ylabel('yData')

%this is finding our residual value which is subtracting our B value from
%our Beta * A matrix 
Residual = B-A*Beta;

%this is finding our L2 value 
L2 = sqrt(Residual'*Residual)


%A) When N = 10 L2 = 1.7910
%   When N = 50 L2 = 5.1501e-04
%   When N = 250 L2 = 0.0011 

%B) we have seen this as a taylor series and the coefficiants were 1 and -1

%C) the coeefficiants for Beta are 

%    Beta =

%    0.9999
%    0.0000
%   -0.4998
%   -0.0000
%    0.0416
%    0.0000
%   -0.0014
%   -0.0000
%    0.0000
%    0.0000
%   -0.0000
%   -0.0000
%    0.0000

%D)  yes they are related to the taylor series 













        
        
    
    