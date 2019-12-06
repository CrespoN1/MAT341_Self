function perform_NonLinear_Least_Squares()
%this is initializing our values 
N = 2500;
tol = 1e-5;
err = 1;

%this is pulling in our data 
data = give_NonLinear_Least_Squares_Data(N);

%this is creating our vectors
xData = data(:,1);
yData = data(:,2);

%this is establishing My Beta values 
Beta = [1 0.5 0.3]'; 

%this while loop is going to keep running while our err value is less than
%tol
while err > tol
    
    %this for loop is going to run until i reaches N
    for i = 1:N
        
        %this is establishing our x value and pulling from xData
        x = xData(i);
        
        %this is creating our expy value 
        expy = exp((-(x-Beta(2))^2)/(2*Beta(3)^2));
        
        %this is creating our Jacobian value 
        J(i,1) = expy;
        J(i,2) = Beta(1)*((x-Beta(2))/(Beta(3)^2))*expy;
        J(i,3) = Beta(1)*((x-Beta(2))^2/(Beta(3)^3))*expy;
        
    end
    
    %this for loop is going to run from i to N value
    for i = 1:N
        
        %this is creating our x and y points 
        x = xData(i);
        y = yData(i);
        
        %this is creating our expy values 
        expy = exp((-(x-Beta(2))^2)/(2*Beta(3)^2));
        
        %this is finding our residual value 
        rVec(i,1) = y-Beta(1)*expy;
        
    end
    
    %this si creating the inverse for our Jacobian
    inverse = inv(J'*J)*J';
    
    %this is creating the Psuedo inverse 
    psuedoInv = inverse*rVec;
    
    %this is finding our BetaNew Value
    BetaNew = Beta + psuedoInv;
    
    %this is finding our err value
    err = sqrt((BetaNew-Beta)'*(BetaNew-Beta));
    
    %this is setting our previous Beta value equal to our new Beta value
    Beta = BetaNew;
    
end

for i = 1:N
    
    %this is creating our x point 
    x = xData(i);
    
    %this is finding our expy value
    expy = exp(-(x-Beta(2))^2/(2*Beta(3)^2));
    
    f(i,1) = Beta(1)*expy;
    
end

Beta

err

%this is plotting our data values 
plot(xData,f,'Red','Linewidth',4)

%this labels our x and y axes 
xlabel('xData');
ylabel('yData');

%this is creating our legend
legend('Data','Model Fit')

    
    
        
        
        
        