function Tn = trapesium(f, x, n)
    
    h = (x(2) - x(1)) / n;
    xvek = x(1):h:x(2);
    yvek = f(xvek);
    Tn = h/2 * (yvek(1) + 2*sum(yvek(2:n)) + yvek(n+1));
end
