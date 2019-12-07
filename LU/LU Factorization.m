%% LU Decompostion
clc
clear

%system we interest to solve, change with yours 
 A = [0.3 0.52 1; 0.5 1 1.9; 0.1 0.3 0.5]; %Coefficient Matrix
 r = [-0.01; 0.67; -0.44;] %Right-Hand Side Matrix
 
 [m,n] = size(A);
 
 %Upper Matrix
 s = 0;
 for j = 1:n-1
	for i = s+1:m-1
		t = A(i+1,j) / A(j,j);
		A(i+1,:) = A(i+1,:) - t * A(j,:);
		r(i+1) = r(i+1) - t * r(j);
		f(i+1,j) = t;
	end
	s = s + 1;
 end
 
U = A %Upper Matrix
L = f;
L(:,n) = zeros(n,1);
for i=1:n-1
	L(i,i) = 1;
end
L %Lower Matrix
%Its work.
%We recommend to see Forward Elimination before 