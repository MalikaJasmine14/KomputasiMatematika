%%TUGAS 03

% % nomor 1
% Kerjakan contoh 4.1 pada diktat Metode Numerik halaman 21 menggunakan 
% Matlab dengan menggunakan metode Jacobi, Gauss Seidel
% 10x1-x2+2x3=6,
% -x1+11x2-x3+3x4=25,
% 2x1_x2+10x3-x4=-11,
% 3x2-x3+8x4=15


% Matriks
A = [10 -1 2 0;
    -1 11 -1 3; 
    2 -1 10 -1; 
    0 3 -3 8];

b = [6; 25; 11; 15];
X0 = zeros(4,1);   
N = 100;           
tol = 1e-6;        

% metode Jacobi
X_jacobi = jacobi(A, b, X0, N, tol);
disp('Solusi dengan metode Jacobi:')
disp(X_jacobi)

% metode Gauss-Seidel
X_gs = gauseid(A, b, X0, N, tol);
disp('Solusi dengan metode Gauss-Seidel:')
disp(X_gs)

