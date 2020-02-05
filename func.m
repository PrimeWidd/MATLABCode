function dx=func(~,x)
mu=1;
C=2;
n=5;
A=round(rand(n));
Deg=zeros(n);
D=diag(diag(A));
A=A-D;
A=triu(A)+triu(A)';
% for i=1:n
%     Deg(i,i)=sum(A(i,:));
% end
% for i=1:n
%     for j=1:n
%         if i==j
%             L(i,j)=Deg(i,j)-A(i,j);
%         else 
%             L(i,j)=-A(i,j);
%         end
%     end
% end
L=[1 -1;-1 1];
dx=mu-x.^2-C*L*x;



