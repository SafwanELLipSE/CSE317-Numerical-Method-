% Newton's Divided Difference
X=[0 0.2 0.4 0.6 0.8]%input of x elements
Y=[1 1.22140 1.49182 1.82212 2.22554]%input of y elements
    [p,m]= size(X);% returns the number of rows and columns when F is considered as a matrix
    F = zeros(m);% creates a 2D array containing only zeroes of size mxm and saves that to array F
    F(:, 1) = Y';% populates the first column of array F with Y values
    % populating F from 2nd column onwards
 for j = 2 : m
 for i = j : m
 F(i,j) = (F(i, j - 1) - F(i-1,j - 1))/(X(i) - X(i-j+1));% upper row minus lower row divided by upper row x element minus lower row x element
 end
 end
 F% display matrix F
 value=0.65; % required value for interpolation
 D=diag(F)' % diagonal elements from F are saved as array D
 R=zeros(1,m);% %initializing row matrix R
 R(1)=D(1);%populating 1st index of R as first index element of D
 R(2)=value-X(1);%populating 2nd index of R
 % populating R from 2nd element onwards 
    for j=3:m
        R(j)=(value-X(j-1))*R(j-1);%( value-X1)(value-X2)......(value-Xn)
    end
  C=zeros(1,m);% %initializing row matrix C
  C(1)=D(1);%populating 1st index of C as first index element of D
  % populating C from 2nd element onwards
  for j=2:m
    C(j)=D(j).*R(j);%P(X) polynomial value
  end
    R% displaying row matrix R
    C% displaying row matrix C
    Result=sum(C)% Result of interpolation
      

    