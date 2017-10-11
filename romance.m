clear
clc
[x,fs]=audioread('romansaSmall.wav');

x1 = x(:,1);
xr = reshape(x1, 79282,45);