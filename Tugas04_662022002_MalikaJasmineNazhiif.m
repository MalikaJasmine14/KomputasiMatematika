%%tugas mingdep membuat kodingan mengenai gambar grafik fungsi
%%sebanyak mungkin 3D 2D (histogram, boxplot, gambar semakin kompleks, 
%%atau kayak batiknya bu hanna) buat yang sangat kompleks jika ingin nilai tinggi
%%buat dalam bentuk kodingan dan pdfnya tugas04.
%%dikumpul tanggal 22

% %Gambar Kurva kupu-kupu 2D
% t = linspace(0, 12*pi, 1000);
% x = sin(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% y = cos(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% 
% figure(1);
% plot(x, y, 'b');
% title('Kurva Kupu-kupu');

% %Gambar Mesh plot dari sin(x.^2 + y.^2)
% [x, y] = meshgrid(-3:0.05:3, -3:0.05:3);
% z = sin(x.^2 + y.^2);
% 
% figure(2);
% mesh(x, y, z);
% colormap spring; colorbar;
% title('Mesh Plot dari sin(x² + y²)');

% %Gambar bunga 2D
% theta = linspace(0, 2*pi, 1000);
% k = 6;  
% r = cos(k * theta);
% 
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% figure(3);
% fill(x, y, [1 0.4 0.6], 'EdgeColor', 'k', 'LineWidth', 1.2); 

% % Gambar 3D starfish
% [u, v] = meshgrid(linspace(0, pi, 100), linspace(0, 2*pi, 100));
% n = 5; 
% 
% r = sin(u) .* (1 + 0.4 * cos(n * v)); 
% x = r .* sin(u) .* cos(v);
% y = r .* sin(u) .* sin(v);
% z = 0.4 * cos(u) .* sin(n*v);  
% figure(4);
% surf(x, y, z, 'FaceColor', [1 0.6 0.3], 'EdgeColor', 'none');
% title('3D Starfish');
% axis equal;
% camlight; lighting gouraud;

% % Gambar Kerang 3D
% [u, v] = meshgrid(linspace(0.01, 2*pi, 150), linspace(0, 2*pi, 150));
% a = 0.4;
% b = 0.2;
% c = 0.4;
% n = 1;   
% 
% x = a * exp(b * u) .* cos(u) .* (1 + cos(v));
% y = a * exp(b * u) .* sin(u) .* (1 + cos(v));
% z = c * exp(b * u) .* sin(v);
% 
% figure(5);
% surf(x, y, z, 'FaceColor', [1 0.8 0.6], 'EdgeColor', 'none');
% title('Kerang 3D');
% axis equal;
% camlight headlight;
% lighting gouraud;
% xlabel('X'); 
% ylabel('Y'); 
% zlabel('Z');

% % Gambar 3D Torus
% figure(6);
% theta = linspace(0, 2*pi, 50);
% phi = linspace(0, 2*pi, 50);
% [Theta, Phi] = meshgrid(theta, phi);
% R = 3; r = 1; 
% 
% X = (R + r*cos(Theta)) .* cos(Phi);
% Y = (R + r*cos(Theta)) .* sin(Phi);
% Z = r * sin(Theta);
% 
% surf(X,Y,Z);
% title('3D Torus');
% axis equal;
% shading interp;
% colormap parula;

% % Gambar Lorenz Attractor
% sigma = 10;
% beta = 8/3;
% rho = 28;
% 
% dt = 0.01;
% N = 10000;
% x = zeros(1,N); y = zeros(1,N); z = zeros(1,N);
% x(1) = 1; y(1) = 1; z(1) = 1;
% 
% for i = 1:N-1
%     dx = sigma*(y(i)-x(i));
%     dy = x(i)*(rho - z(i)) - y(i);
%     dz = x(i)*y(i) - beta*z(i);
%     
%     x(i+1) = x(i) + dx*dt;
%     y(i+1) = y(i) + dy*dt;
%     z(i+1) = z(i) + dz*dt;
% end
% 
% figure(7);
% plot3(x,y,z, 'LineWidth', 1.2);
% title('Lorenz Attractor');
% xlabel('x'); ylabel('y'); zlabel('z');
% grid on; axis tight;

% % Gambar Rossler Attractor
% a = 0.2; b = 0.2; c = 5.7;
% dt = 0.01;
% n = 10000;
% x = zeros(1,n); y = zeros(1,n); z = zeros(1,n);
% x(1) = 0; y(1) = 1; z(1) = 0;
% 
% for i = 1:n-1
%     dx = -y(i) - z(i);
%     dy = x(i) + a * y(i);
%     dz = b + z(i) * (x(i) - c);
%     
%     x(i+1) = x(i) + dx * dt;
%     y(i+1) = y(i) + dy * dt;
%     z(i+1) = z(i) + dz * dt;
% end
% 
% % Plot
% figure(8);
% plot3(x, y, z, 'c', 'LineWidth', 1.5);
% title('Rossler Attractor');
% xlabel('X'); ylabel('Y'); zlabel('Z');
% grid on;
% axis tight;


% % Gambar Rossler Attractor tapi kalau diputer jadi kuping gajah
% a = 0.2; b = 0.2; c = 5.7;
% dt = 0.01;
% n = 10000;
% x = zeros(1,n); y = zeros(1,n); z = zeros(1,n);
% x(1) = 0; y(1) = 1; z(1) = 0;
% 
% for i = 1:n-1
%     dx = -y(i) - z(i);
%     dy = x(i) + a * y(i);
%     dz = b + z(i) * (x(i) - c);
%     
%     x(i+1) = x(i) + dx * dt;
%     y(i+1) = y(i) + dy * dt;
%     z(i+1) = z(i) + dz * dt;
% end
% 
% % Plot
% figure(9);
% plot3(x, y, z, 'color', cream , 'LineWidth', 1.5);
% title('Rossler Attractor yang diputar supaya mirip kuping gajah');
% axis tight;
% set(gcf, 'Color', [0.2, 0.13, 0.06]); 
% set(gca, 'Color', [0.2, 0.13, 0.06]); 

% % Histogram dari distribusi acak
% data = randn(100, 1);
% figure(10);
% hist(data, 30);
% title('Histogram Data Acak');
% xlabel('Nilai');
% ylabel('Frekuensi');

% % Boxplot untuk data acak
% data1 = randn(100, 1); 
% data2 = randn(100, 1) + 1; 
% data3 = randn(100, 1) - 1; 
% data = [data1, data2, data3];
% figure(11);
% boxplot(data, 'Labels', {'Data 1', 'Data 2', 'Data 3'});
% title('Boxplot Data Acak');
% ylabel('Nilai');

% % Mandelbrot Set (Fraktal)
% x = linspace(-2, 1, 800);
% y = linspace(-1.5, 1.5, 800);
% [X, Y] = meshgrid(x, y);
% C = X + 1i * Y;
% Z = zeros(size(C));
% iterations = 100;
% 
% for k = 1:iterations
%     Z = Z.^2 + C;
% end
% figure(12);
% imagesc(abs(Z));
% colormap(hot);
% title('Set Mandelbrot');
% axis equal;
% axis off;

% % Helix 3D
% figure(13);
% t = linspace(0, 10*pi, 1000);
% x3 = sin(t);
% y3 = cos(t);
% z3 = t;
% subplot(2,3,3);
% plot3(x3, y3, z3, 'LineWidth', 2);
% title('3D Helix');
% grid on; xlabel('X'); ylabel('Y'); zlabel('Z');

% % Gunung 3D (fungsi peaks)
% figure(14);
% subplot(2,3,2);
% [X,Y,Z] = peaks(50);
% surf(X,Y,Z);
% title('Gunung 3D (peaks)');
% shading interp; colormap(redmap); axis tight;

% % OMBAK 3D
% figure(15);
% [x, y] = meshgrid(0:0.1:10);
% z = sin(x) + sin(y);
% surf(x,y,z);
% colormap(ocean);
% shading interp;
% title('Ombak Laut');

% % spiral galaxy
% figure(16);
% theta = linspace(0, 8*pi, 2000);
% r = linspace(0.05, 1.5, 2000);
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% scatter(x, y, 2, theta, 'filled');
% title('Spiral Galaxy');
% colormap(hot);
% axis equal;
% axis off;

% %Globe Wireframe
% figure(17);
% [X,Y,Z] = sphere(50);
% mesh(X,Y,Z);
% axis equal;
% title('Wireframe Bola Dunia');

% % Objek Transparan 3D
% figure(18);
% [x,y,z] = sphere(50);
% surf(x,y,z, 'FaceAlpha',0.3);
% title('Objek Transparan');

% %Bentuk Gelombang Spherical
% figure(19);
% [x,y,z] = sphere(100);
% r = sin(10*x.*y.*z);
% surf(x.*r, y.*r, z.*r);
% title('Gelombang Bola');

% % Plot dengan Anotasi
% figure(20);
% x = linspace(0,10,100);
% y = sin(x);
% plot(x, y);
% text(5, 0, 'Tengah Sinus');

% % Gambar Gelas 3D
% figure(21);
% theta = linspace(0,2*pi,100);
% z = linspace(0,1,100);
% [Theta,Z] = meshgrid(theta,z);
% R = Z+0.2;
% X = R.*cos(Theta);
% Y = R.*sin(Theta);
% surf(X,Y,Z);
% title('Gelas 3D');

% % Stream Plot (vortex field)
% figure(22);
% [x,y] = meshgrid(-2:0.2:2);
% u = -y;
% v = x;
% quiver(x,y,u,v);
% title('Field Vector Rotasi');

% % Interpolasi Data 2D
% figure(23);
% x = 1:5; y = 1:5;
% v = rand(5);
% [Xq,Yq] = meshgrid(1:0.1:5);
% Vq = interp2(x,y,v,Xq,Yq);
% surf(Xq,Yq,Vq);
% title('Interpolasi Permukaan');

% % Pola Lissajous 3D
% figure(24);
% t = linspace(0,10*pi,1000);
% x = sin(3*t);
% y = sin(4*t);
% z = sin(5*t);
% plot3(x,y,z);
% title('Kurva Lissajous 3D');

% % Heart Curve
% figure(25);
% t = linspace(0,2*pi,1000);
% x = 16*sin(t).^3;
% y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);
% plot(x,y);
% title('Grafik Bentuk Hati');
% axis equal;

% % tetesan air
% figure(26);
% [u,v] = meshgrid(linspace(0, pi, 50), linspace(0, 2*pi, 50));
% x = 3 * sin(u) .* cos(v);
% y = 3 * sin(u) .* sin(v);
% z = 3 * cos(u) - (3 * sin(u)).^0.7;
% 
% surf(x, y, z);
% colormap autumn;
% shading interp;
% axis equal;
% title('Bentuk air 3D');

% %pola bunga matahari
% figure(27);
% n = 200;
% phi = pi * (3 - sqrt(5)); % golden angle
% theta = (1:n) * phi;
% r = sqrt(1:n);
% x = r .* cos(theta);
% y = r .* sin(theta);
% scatter(x, y, 20, 'filled');
% axis equal;
% title('Pola Bunga Matahari');

% % tunas spiral
% figure(28);
% theta = linspace(0, 6*pi, 1000);
% a = 0.1;
% b = 0.2;
% r = a * exp(b*theta);
% x = r .* cos(theta);
% y = r .* sin(theta);
% plot(x, y, 'g', 'LineWidth', 2);
% axis equal;
% title('Tunas Spiral');

% % irisan semangka
% figure(29);
% theta = linspace(0, pi, 100);
% x = cos(theta);
% y = sin(theta);
% fill(x, y, [1 0.3 0.3]);  % merah
% hold on;
% scatter(0.7*cos(theta), 0.7*sin(theta), 20, 'k', 'filled'); % biji
% axis equal;
% title('Irisan Semangka');

% % Bunga parametrik 3D
% figure(30);
% [u,v] = meshgrid(linspace(0, pi, 100), linspace(0, 2*pi, 100));
% r = sin(6*u).^2;
% x = r .* sin(u) .* cos(v);
% y = r .* sin(u) .* sin(v);
% z = r .* cos(u);
% surf(x, y, z);
% shading interp;
% colormap hot;
% axis equal;
% title('Bunga Parametrik 3D');

% %  DAUN MELENGKUNG
% figure(31);
% [u,v] = meshgrid(linspace(-1,1,100), linspace(-1,1,100));
% z = exp(-u.^2 - v.^2) .* sin(2*pi*u);
% surf(u, v, z);
% colormap summer;
% shading interp;
% axis equal;
% title('Daun Lengkung 3D');

% % Mawar Spiral 3D
% figure(32);
% theta = linspace(0, 10*pi, 1000);
% z = linspace(-1, 1, 1000);
% r = sin(5*theta);
% x = r .* cos(theta);
% y = r .* sin(theta);
% plot3(x, y, z, 'm', 'LineWidth', 2);
% axis equal;
% grid on;
% title('Mawar Spiral 3D');

% % POLA BIJI BUNGA MATAHARI 3D
% figure(33);
% n = 300;
% g = pi*(3 - sqrt(5)); % golden angle
% theta = (1:n) * g;
% r = sqrt(1:n) / sqrt(n);
% z = linspace(-1, 1, n);
% x = r .* cos(theta);
% y = r .* sin(theta);
% scatter3(x, y, z, 20, z, 'filled');
% axis equal;
%  title('Pola Biji Bunga Matahari 3D');

% % pola batik spiral simetris
% figure(34);
% theta = linspace(0, 20*pi, 5000);
% r = sin(3*theta) .* cos(2*theta);
% x = r .* cos(theta);
% y = r .* sin(theta);
% plot(x, y, 'b');
% axis equal off;
% title('Pola Batik Spiral Simetris');

% % pola geometris batik sinusoidal
% figure(35);
% [x,y] = meshgrid(linspace(-pi,pi,300));
% z = sin(5*x).*cos(5*y);
% imagesc(z);
% colormap summer;
% axis equal off;
% title('Pola Geometris Batik Sinusoidal');

% % tile bunga kecil
% figure(36);
% [x, y] = meshgrid(-4:0.01:4, -4:0.01:4);
% z = sin(3*x) + sin(3*y);
% contourf(x, y, z, 20, 'LineStyle','none');
% colormap(hot);
% axis equal off;
% title('Motif Batik Tile Bunga Kecil');

% % BINTANG BERLAPIS
% figure(37);
% theta = linspace(0, 2*pi, 500);
% r = 1 + 0.3*sin(8*theta);
% x = r .* cos(theta);
% y = r .* sin(theta);
% fill(x, y, [0.2 0.5 0.8]);
% hold on;
% for i = 1:6
%     fill(x*i*0.2, y*i*0.2, [0.2 0.5 0.8]*i/6);
% end
% axis equal off;
% title('Bintang Berlapis');

% % Motif Gelombang
% figure(38);
% [x,y] = meshgrid(-5:0.1:5, -5:0.1:5);
% z = sin(x).*cos(y) + sin(x + y);
% imagesc(z);
% colormap(cool);
% axis equal off;
% title('Motif Gelombang');

% % motif batik hexagon
% figure(39);
% theta = linspace(0, 2*pi, 7);
% x = cos(theta);
% y = sin(theta);
% for i = -2:2
%     for j = -2:2
%         fill(x+i*1.5, y+j*sqrt(3), 'c');
%         hold on;
%     end
% end
% axis equal off;
% title('Motif Batik Hexagon');

% % batik modern pola 3D wave
% figure(40);
% [x,y] = meshgrid(linspace(-3,3,300));
% z = sin(x.^2 + y.^2);
% surf(x, y, z, 'EdgeColor','none');
% colormap(hsv);
% axis equal off;
% view(2);
% title('Batik Modern Pola 3D Wave');

% % FRAKTAL BATIK POLA PERSEGI PANJANG
% figure(41);
% clf;
% n = 5;
% for i = 1:n
%     t = linspace(0, 2*pi, 100);
%     r = cos(4*t) * i/n;
%     x = r .* cos(t);
%     y = r .* sin(t);
%     plot(x, y, 'LineWidth', 1.5);
%     hold on;
% end
% axis equal off;
% title('Fraktal Batik Pola Persegi-Panjang');

% % bola batik 3D
% figure(42);
% [u, v] = meshgrid(linspace(0, pi, 200), linspace(0, 2*pi, 200));
% r = 1 + 0.3 * sin(6*u).*cos(6*v);
% x = r .* sin(u).*cos(v);
% y = r .* sin(u).*sin(v);
% z = r .* cos(u);
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(jet);
% title('Motif Bola Batik 3D');
% axis equal;

% % motif fraktal bunga batik 3D
% figure(43);
% [x,y] = meshgrid(linspace(-2*pi, 2*pi, 500));
% z = sin(x).*cos(y).*sin(x+y);
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(summer);
% title('Motif Fraktal Bunga Batik 3D');
% axis equal;

% % pola renda batik 3D
% figure(44);
% [x,y] = meshgrid(linspace(-4,4,300));
% z = cos(x.^2 - y.^2).*sin(x.*y);
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(cool);
% title('Pola Renda Batik 3D');
% axis equal;

% % pola cicin batik 3D
% figure(45);
% theta = linspace(0, 2*pi, 100);
% phi = linspace(0, 2*pi, 100);
% [theta, phi] = meshgrid(theta, phi);
% r = 1 + 0.3 * sin(6*theta).*cos(3*phi);
% x = r .* cos(theta);
% y = r .* sin(theta);
% z = cos(phi);
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(winter);
% title('Pola Cincin Batik 3D');
% axis equal;

% % kerucut motif batik 3D
% figure(46);
% [r,theta] = meshgrid(linspace(0,1,200), linspace(0,2*pi,200));
% x = r .* cos(theta);
% y = r .* sin(theta);
% z = 1 - r;
% c = sin(10*x).*cos(10*y); % motif batik
% surf(x, y, z, c, 'EdgeColor','none');
% colormap(hot);
% axis equal;
% title('Kerucut Motif Batik 3D');

% % kubus bermotif internal
% figure(47);
% [x,y,z] = meshgrid(linspace(-1,1,40));
% v = sin(5*x).*cos(5*y).*sin(5*z);
% p = patch(isosurface(x,y,z,v,0));
% p.FaceColor = 'interp';
% p.EdgeColor = 'none';
% view(3); camlight; lighting gouraud;
% colormap(hsv);
% axis equal;
% title('Kubus Bermotif Internal (Isosurface)');

% % BOLA BOLA 3D
% figure(48);
% [x,y,z] = meshgrid(linspace(-2,2,40));
% v = exp(-x.^2 - y.^2 - z.^2) .* sin(3*x).*cos(3*y).*sin(3*z);
% p = patch(isosurface(x,y,z,v,0.1));
% p.FaceColor = [0.8 0.8 1]; p.EdgeColor = 'none';
% camlight; lighting gouraud;
% axis equal;
% title('bola bola');

% % donat torus 3D
% figure(49);
% [u,v] = meshgrid(linspace(0, 2*pi, 150));
% r = 1 + 0.3*sin(3*u).*cos(2*v);
% x = (2 + r .* cos(v)) .* cos(u);
% y = (2 + r .* cos(v)) .* sin(u);
% z = r .* sin(v);
% surf(x, y, z, 'EdgeColor','none');
% colormap(copper);
% axis equal;
% title('donat Torus 3D');

% % jamur
% figure(50);
% [phi,theta] = meshgrid(linspace(0, pi/2, 100), linspace(0, 2*pi, 200));
% r = 1 + 0.1*sin(6*theta).*cos(3*phi);
% x1 = r .* sin(phi).*cos(theta);
% y1 = r .* sin(phi).*sin(theta);
% z1 = r .* cos(phi) + 1;
% [theta2,z2] = meshgrid(linspace(0,2*pi,200), linspace(0,1.2,100));
% r2 = 0.25 + 0.05*sin(5*z2); 
% x2 = r2.*cos(theta2);
% y2 = r2.*sin(theta2);
% z2 = z2;
% surf(x1, y1, z1, 'EdgeColor','none', 'FaceColor', [0 0.6 0]); hold on; 
% surf(x2, y2, z2, 'EdgeColor','none', 'FaceColor', [1 1 0]);            
% light; lighting gouraud;
% axis equal;
% title('Jamur 3D');


