function [ S ] = vector2String( M )
%MATRIX2STRING transform a matrix M , where M_{ij} \in {0,1,2,3} to array of strings {a,c,g,t}
S = '';
s = 'acgt';
    for i = 1:size(M,1)
        x = '';
        for j=1:size(M,2)
         x = [s(M(i,j) + 1), x];
        end
        S = [x; S];
    end
end

