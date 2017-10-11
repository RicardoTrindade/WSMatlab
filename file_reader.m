clear all
close all
clc
fulldata=cell(1);

f = filesep;
D = dir([pwd, f,'Acceleration*']);
Num = length(D(not([D.isdir])));

for i=1:Num
    filename_a = sprintf('Acceleration (%d).csv',i);
    fulldata{i,1} = csvread(filename_a);
end
% OU
a1 = csvread('Acceleration (1).csv');
a2 = csvread('Acceleration (2).csv');
a3 = csvread('Acceleration (3).csv');