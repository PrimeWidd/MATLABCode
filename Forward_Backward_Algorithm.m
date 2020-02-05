function [y, x] = FBA(L, U, b)
n = size(L,1);
y = zeros(n);
y = y(1,:);
y = transpose(y);
y(1) = b(1)/L(1,1);
q = 0;
for i = 2 : n
    for j = 1 : (i - 1) 
        q = q + L(i,j)*y(j)
    end
    y(i) = (b(i) - q)/L(i,i)
end
x = zeros(n);
x = x(1,:);
x = transpose(x);
x(n) = y(n)/U(n,n);
r = 0;
for i = 1 : (n-1)
    for j = i + 1 : n
    r = U(i,j)*x(j);
    end
    x(i) = (y(i) - r)/U(i,i);
end
x