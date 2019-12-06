function fit_Sine_Series() 

%this is intitialzing our values 
N = 500;
M = 40;

%this is calling in or creating our data inputs 
xData = linspace(-pi,pi,N);
yData = ((0.25*xData.^2).*cos(xData).^4.*sin(xData).^7)'; 

%this for loop is going to run from 1 to our Nth iteration
for i = 1:N
    
    %this is creating our vector 
    x = xData(i);
    y = yData(i); 
    
    %this for loop is creating our NxN matrix 
    for j = 1:M
        A(i,j) = sin(j*x);
    end
    
     B(i,:) = y;
end

%this is setting our inverted matrix equal to inverse 
inverse = (inv(A'*A))*A';

%we are creating a Beta value here 
Beta = (inverse)*B; 

%this for loop is running from 1 to N 
for i = 1:N
    
    %this is creating another x vector 
    x = xData(i);
    
    %this is setting 1 of our columns equal to 0
    f(i,1) = 0;
    
    j = 1;
    
    %this while loop is running for when j is less than or equal to M
    while j <= M 
        
        %This is evaluating our matrix 
        f(i,1) = f(i,1) + Beta(j)*sin(j*x);
        
        %this is incrimenting our matrix 
        j = j + 1;
        
    end
    
end

%this is plotting our data values 
figure; plot(xData, yData,'o','LineWidth',6); hold on; plot(xData,f,'R','LineWidth',4)

%this is labeling our x and y axis
xlabel('xData');
ylabel('yData');

legend('Data','Best Sine Series Fit')

%this is finding our residual value by subtracting our B value from our
%A*Beta matrix
Residual = B-A*Beta;

%this is figuring our our L2
L2 = sqrt(Residual'*Residual) 

%A) when N = 500 and M = 5 L2 = 0.0813
%   when N = 500 and M = 10 L2 = 0.0096
%   when N = 500 and M = 20 L2 = 2.1412e-06
%   when N = 500 and M = 40 L2 = 3.9199e-09

%B) the name of the series or process is called the Fourier Series








