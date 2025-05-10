%%TUGAS 03

% % nomor 2
% Kerjakan contoh 10.1 pada diktat Metode Numerik halaman 75 menggunakan 
% jumlahan Riemann dan aturan trapesium 
% Hitung luas bidang datar yang dibatasi oleh y=2x^3 dan sumbu x untuk x
% dalam elemen [0,1] dengan menggunakan aturan trapesium dan lebar langkah
% h = 0.1

f = @(x) 2*x.^3;
a = 0;
b = 1;
h = 0.1;
n = (b - a) / h;

% Trapesium
Tn = trapesium(f, [a b], n);

% Riemann kiri dan kanan
Rkiri = riemann(f, [a b], n, 'kiri');
Rkanan = riemann(f, [a b], n, 'kanan');

fprintf('Luas (Trapesium)     = %.6f\n', Tn);
fprintf('Luas (Riemann Kiri)  = %.6f\n', Rkiri);
fprintf('Luas (Riemann Kanan) = %.6f\n', Rkanan);
