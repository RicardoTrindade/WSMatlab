function [ x ] = fibo( n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    if n <= 1
        x = 1;
    else
        x = fibo(n-1) + fibo(n-2);
    end

end

