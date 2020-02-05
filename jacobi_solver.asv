function x = jacobi_solver(A, b, x0, n, tol) %A = matrix, b = vector, x0 = inital vector of x, n = iteratios, tol = tolerance
P = diag(diag(A));
Q = inv(P);
B = Q*(P-A);
g = Q * b;
x = x0;
for i = 2 : n
    x(i) = B.*x(i-1) + g;
end