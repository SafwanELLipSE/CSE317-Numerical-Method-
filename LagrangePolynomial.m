X=[1980 1985 1990 1995 2000 2005];
Y=[440 510 525 571 500 600];
m=length(X);
value=1998;
F=ones(1,m);
for i=1:m
   for j=1:m
       if(i~=j)
           F(i)=F(i)*(value-X(j))/(X(i)-X(j));
       end
   end
end
F
P=zeros(1,m);
for i=1:m
    P(i)=P(i)+Y(i)*F(i);
end
answer=sum(P)
    