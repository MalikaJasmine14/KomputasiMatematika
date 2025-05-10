function Rn = riemann(f, x, n, tipe)
    h = (x(2) - x(1)) / n;

    if strcmp(tipe, 'kiri')
        xvek = x(1):h:(x(2) - h);  % titik kiri
    elseif strcmp(tipe, 'kanan')
        xvek = (x(1) + h):h:x(2);  % titik kanan
    else
        error('Tipe harus ''kiri'' atau ''kanan''');
    end

    yvek = f(xvek);
    Rn = h * sum(yvek);
end
