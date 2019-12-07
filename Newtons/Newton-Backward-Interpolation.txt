% Newton Backward Difference 
X=[0 0.2 0.4 0.6 0.8]%input of x elements
Y=[1 1.22140 1.49182 1.82212 2.22554]%input of y elements
[p,m]= size(X);% returns the number of rows and columns when X is considered as a matrix
F = zeros(m);% creates a 2D array containing only zeroes of size mxm and saves that to array F
for i=1:m
   F(i,1)=Y(i);%populating 1st column of matrix F
end 
% populating matrix F from 2nd column to remaining
n=m-1%initializing integer variable n to m-1
for j=2:m+1
for i=1:n
F(i,j)=F(i+1,j-1)-F(i,j-1);%lower row minus upper row on same column to get value for next column
end
n=n-1;%decrementing n by 1
end 
F%displaying matrix F
h=X(2)-X(1) % finding the value of h
value=0.65; % value of interest for interpolation 
P=(value-X(m))/h % P=(required input value for interpolation minus last index value of row matrix X)/h
D = zeros(1,m);%initializing row matrix D
% extracting left diagonal elements from matrix F
for i = 0:m-1
   D(i+1) = F(i+1, m - i);%increasing row decreasing column where column value initialized as m
end
R=zeros(1,m);%initializing row matrix R
 R(1)=D(m);%populating 1st index of R as last index element of D
 R(2)=P;%populating 2nd index of R with P
 %populating matrix R from 3rd index
 for j=3:m
     R(j)=(P+j-2).*R(j-1);%P(P+1)....(P+k-1).....
 end
E=zeros(1,m);%initializing row matrix E
E(1)=D(m);%populating 1st index of E as last index element of D
E(2)=P;%populating 2nd index of E with P
 %populating matrix E from 3rd index
for j=3:m
   E(j)=R(j)/factorial(j-1);%P(P+1)....(P+k-1)/k!.....
 end
E%displaying matrix E
D%displaying matrix D
Result=zeros(1,m);%initializing row matrix Result
Result(1)=D(m);%populating 1st index of Result as last index element of D
%populating Result matrix 
for j=2:m
   Result(j)=E(j)*D(m-j+1);%elements of E are multiplied with elements of D where D's elements are in reverse order for multiplication
end
 Result% displaying row matrix Result
 Answer=sum(Result)%summation of elements from row matrix Result which is the required answer 

