%% Workshop de Matlab
%
%  Introdução
%  ------------
% 
%  Este workshop serve para eu aprender o básico de Matlab para tirar
%  grandes notas nas cadeiras. 
%

%% Initialization
clear all; close all; clc

%% ==================== Tarefa 1: Vectores ====================
%  Um vector é usado praticamente em tudo de Matlab

%  Variáveis
v1 = [1 2 3];
v2 = 1:10;



%%
v= [1 2 3];
u = [4 5];
plot(v);
hold on
plot(u);
plot(2*v,'r*')
hold off
%% Hello World!

%Hoje vou aprender bastante de Matlab

t = -2*pi:0.1:2*pi;
y = sin(t);

figure(3)
plot(t,y);




A = rand(10000000,1);
B = rand(10000000,1);

tic
res = 0;
for i = 1:length(A)
    res = res + A(i)*B(i);
end
toc

tic
A'*B;
toc

x = -10*pi:0.0001:10*pi;


x = [ones(1,10) zeros(1,10) 5*ones(1,10)];



tic
count = 0;
for i = 1:length(x)
    if(x(i) == 0)
        count = count + 1;
    end
end
toc

tic
count = length(find(x == 0));
toc

x = 1:10;
figure(1)
plot(x,'ko','MarkerFaceColor','black')

x1 = 1:100;
x2 = 1:200;
y1 = sin(x1);
y2 = 0.2*cos(5*x2);
figure(2)
plot(x1,y1,x2,y2)
xlabel('x')
ylabel('y')
title('Titulo')
axis([0 200 -2 2])

load('ecg.mat')
[pks, locs] = findpeaks(x1,'MinPeakHeight',300);
figure(3)
plot(x1)
hold on
plot(locs,pks,'ko','MarkerFaceColor','black')
hold off

f = @(x,y)(x^3+y^3);
syms x y
f(x,y)
df = diff(f(x,y),x)
df = matlabFunction(diff(f(x,y)))