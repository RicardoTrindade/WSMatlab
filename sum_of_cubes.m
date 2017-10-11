function [ z,p ] = sum_of_cubes( x, y )
%sum_of_cubes Recebe dois números x e y
%Devolve a soma de x^3 com y^3 na variável z e o dobro desse valor

z = x^3 + y^3;
p = 2*z;
end

