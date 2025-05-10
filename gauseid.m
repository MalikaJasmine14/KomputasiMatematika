function X = gauseid(A, b, X0, N, tol)
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
X = X0;
k = 1;
norma = inf;

while k <= N && norma > tol
    X_old = X;
    for i = 1:n
        sum1 = A(i, 1:i-1) * X(1:i-1);
        sum2 = A(i, i+1:n) * X_old(i+1:n);
        X(i) = (b(i) - sum1 - sum2) / A(i,i);
    end
    norma = max(abs(X - X_old));
    k = k + 1;
end

end
