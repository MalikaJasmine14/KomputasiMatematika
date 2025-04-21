%Definiskan fungsi
f = inline('x^2-3','x');

%interval [1,2]
X = [1 2];

%panggil fungsi BagiDua
[x,galat]=bagidua(f,X);

disp('akar hampiran = ')
disp(x)
disp('galat = ')
disp(galat)