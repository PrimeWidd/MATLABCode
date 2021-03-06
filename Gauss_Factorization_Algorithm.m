function [L,U] = GFA(A)
n = size(A);
for b = 1 : n
if det(A(1:b,1:b)) == 0
    L = 'Cannot Factorize'
end
end

U = A;
L = zeros(n);
for a = 1 : size(n)
    L(a,a) = 1;
end
for k = 1 : (n - 1)
for i = k + 1 : n 
    if U(k,k) == 0 ;
        L(i,k) = U(i,k)./U(k,k) ;
    else                            
    for j = (k + 1) : n
        U(i,j) = U(i,j) - L(i,k).*U(k,j);
    end
    end
end
end
end
        
        
        
    