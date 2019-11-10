function Nelder_Mead(tol)

%this is initialzing our values
err = 1;

x1 = 0.35;
y1 = 2.8;
x2 = 4.0;
y2 = 4.0;
x3 = 4.5;
y3 = 4.5;

%this is creating our vectors
xVec = [x1 x2 x3]
yVec = [y1 y2 y3]
fVec = [f(x1,y1) f(x2,y2) f(x3,y3)];

%this initialzing our N value
N = 0;

%this while loop is going to keep running until the err is greater than the
%tol
while err > tol
    
    %this is sorting our vectors and assigning new values to our vectors
    [fNew,indsVec] = sort(fVec);
    xLeast = xVec(indsVec(1));
    xMid = xVec(indsVec(2));
    xGreat = xVec(indsVec(3));
    yLeast = yVec(indsVec(1));
    yMid = yVec(indsVec(2));
    yGreat = yVec(indsVec(3));
    
    %this is calculating the new points and the midpoint 
    xMidpoint = 1/2*(xLeast+xMid);
    xReach = xMidpoint + (xMidpoint-xGreat);
    yMidpoint = 1/2*(yLeast + yMid);
    yReach = yMidpoint + (yMidpoint - yGreat);
    
    %if this statement is true then it runs, our newer f(xGreat,yGreat) has
    %to be greater than f(xReach, yReach) to be true  
    if f(xReach, yReach) < f(xGreat,yGreat)
        xGreat = xReach;
        yGreat = yReach;
        
    %otherwise it will run this statement 
    else
        if f(xReach,yReach) > f(xGreat,yGreat)
            xCenter = 1/2*(xMidpoint + xGreat);
            yCenter = 1/2*(yMidpoint + yGreat);
            
            if f(xCenter,yCenter) < f(xGreat,yGreat)
                xGreat = xCenter;
                yGreat = yCenter;
                
            else 
                xMid = 1/2*(xLeast + xMid);
                yMid = 1/2*(yLeast + yMid);
                xGreat = 1/2*(xLeast + xGreat);
                yGreat = 1/2*(yLeast + yGreat);
                
            end
            
        end
        
    end
    
    %calculates our err and prints out the values 
    err = abs(f(xGreat,yGreat)-f(xLeast,yLeast));
    
    %prints out our points 
    xVec = [xLeast xMid xGreat];
    yVec = [yLeast yMid yGreat];
    fVec = [f(xLeast, yLeast) f(xMid,yMid) f(xGreat,yGreat)];
    
    %this is our counter 
    N = N + 1;
    
end

%this prints out our points and the amount of iterations it took to run
xLeast
yLeast
N

end

%this function is solving for our sin(x) and cos(y)
function val = f(x,y)

val = -(sin(x) + cos(y));

end

%A) it takes 29 iterations

%B) the points appear to be converging to xLeast = 1.5715, yLeast = 7.9827e-04
%therefore the true minimum point is located at (pi/2,0). It doesnt look
%like 1e-8 error because as you change your error you get different values
%The problems we face with this iteration is that we are essentially
%assuming that we are finding the min between ff least and f great.

%C) when you change the second initial point it now takes 58 iterations to
%achieve 1e-8 accuracy. the new minima is located at xLeast = 1.5709, yLeast = -1.1087e-04
%which is still not correct because it is a different min from the min we
%found in part A. Even though we moved our new intial value closer to our
%previous minima it actually took more iterations to guess the minima. This
%is where optimization fails because even if you put your points closer to
%the minima we are trying to find it still does not gurantee you that you
%will have less iterations. Our guess will still have be between 2 values

%D) it takes 53 iterations to find the min of (-4.7123, -2.8363e-04) which is different than the other minimas we have found
%and different from the real min 
