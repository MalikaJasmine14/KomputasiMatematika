function X = jacobi(A, b, X0, N, tol)
if nargin < 5
    tol = 1e-6;
end
if nargin < 4
    N = 100;
end
if nargin < 3
    X0 = zeros(size(b));
end

n = length(b);
D = diag(diag(A));
L_plus_U = A - D;
P = D \ L_plus_U;
Q = D \ b;

X = X0;
k = 1;
norma = inf;

while k <= N && norma > tol
    X_new = Q - P * X;
    norma = max(abs(X_new - X));
    X = X_new;
    k = k + 1;
end

end
