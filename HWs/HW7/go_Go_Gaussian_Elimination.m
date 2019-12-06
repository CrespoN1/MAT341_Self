
function OpCount = go_Go_Gaussian_Elimination(N)

%this is creating our random nxn matrix 
B = rand(N,N);

%this is initializing our counter 
OpCount = 0; 

%this for loop is making the matrix into Row Echelon Form
%this for loop is going to keep running from 1 to N iterations 
for L=1:N
    
    %this for loop is going to run from the L iteration value till it
    %reaches the Nth value 
    for i=L:N
        
        %this for loop is helping us with our basic row and matrix
        %operators 
        for j=1:N 
            
            %this is divding our matrix rows 
            A = (B(i,j) / B(L,L)); 

            %This is incrimenting our opperation count value
            OpCount = OpCount + 1;
            
            %this for loop is going to run until i is equal to L
            if i == L 

                B(i,j) = A;

            else

                %this is creating our value and setting it equal to our
                %matrix times A
                val = A * B(L,j); 

                %this is incrimenting our operation count again 
                OpCount = OpCount + 1;
                
                %this is subtracting our value from our B matrix 
                B(i,j) = val - B(i,j);

                %this is incrimenting our opperation value 
                OpCount = OpCount + 1;
            end
            
        end
    end
end

OpCount 

%this function is creating our reduced row echelon form for the matrix 
for L=N:-1:2
    
    %this for loop is going to run from the first input till it reaches 1
    for i=L-1:-1:1

        %This is creating a new matrix equal to the two previous B matrix
        %values 
        A = B(i,L) * B(L,L);
        OpCount = OpCount + 1;
        
        B(i,L) = B(i,L) - A;
        OpCount = OpCount + 1;
    end
end
