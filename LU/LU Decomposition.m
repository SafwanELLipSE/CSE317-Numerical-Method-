% L-U decomposition
A=[3 -.1 -.2; .1 7 -.3; .3 -.2 10]% coefficient matrix
B=[7.85; -19.3; 71.4]% right hand side vector
[m n]=size(A);% row size m and column size n of matrix A is recorded 
if (m ~= n )% if row size not equal column size
    disp('Invalid procedure since matrix A must be square');%print
    return;% terminates program
end;
  L=zeros(m,m);%square matrix L initialized
  U=zeros(m,m);%square matrix U initialized
  % calculating L matrix and U matrix
  for i=1:m 
      for r=1:i-1
          L(i,r)=A(i,r);
           for j=1:r-1
             L(i,r)= L(i,r)-L(i,j)*U(j,r);
           end
          L(i,r) = L(i,r)/U(r,r);
      end
      for r=i:m
        U(i,r) = A(i,r);
          for j=1:i-1
            U(i,r)= U(i,r)-L(i,j)*U(j,r);
          end
      end
  end
  for i=1:m
    L(i,i)=1;% diagonals of L are 1
  end
  U
  L
  % solving Ly=b as forward substitution
y=zeros(m,1);% initializing column matrix y
y(1)=B(1)/L(1,1);% first index element of y is initialized 
for i=2:m
    %y(i) = B(i)-L(i,1)*y(1)-L(i,2)*y(2)-L(i,3)*y(3)........soving equations
    y(i)=-L(i,1)*y(1);% 
      for k=2:i-1
        y(i)=y(i)-L(i,k)*y(k);
      end;
    y(i)=(B(i)+y(i))/L(i,i);
end;
y% displaying y
% solving Ux = y as backward substitution
x=zeros(m,1);% initializing column matrix x
x(m)=y(m)/U(m,m);% first index of x is populated
i=m-1;% variable i initialized to row size-1
q=0;% variable q initialized to zero
while(i~= 0)% continues as long as i not equal to zero 
  x(i)=-U(i,m)*x(m);
   q=i+1;% q incrementing by 1
      while(q~=m)% if q is not equal to row/column size since square matrix
         x(i)=x(i)-U(i,q)*x(q);
         q=q+1;% q incrementing by 1
      end;
    x(i)=(y(i)+x(i))/U(i,i);% y and x values divided bu U value
    i=i-1;;% i incrementing by 1
end;
x% solution