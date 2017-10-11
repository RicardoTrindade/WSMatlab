function [ count ] = count_zeros( v )
%count_zeros Recebe um vector v
%Devolve o número de zeros desse vector

count = length(find(v == 0));

end