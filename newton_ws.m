function [ x, ex ] = newton_ws( f, df, x0, tol)
%newton_ws Recebe uma função f, a sua derivada df, uma aproximação inicial
%x0 e uma tolerância de erro tol
%Devolve a aproximação da raiz x assim como a estimação do erro ex em cada
%iteração
%

x(1) = x0 - (f(x0)/df(x0));
ex(1) = abs(x(1)-x0);
k = 2;
while (ex(k-1) >= tol)
    x(k) = x(k-1) - (f(x(k-1))/df(x(k-1)));
    ex(k) = abs(x(k)-x(k-1));
    k = k+1;
end

end