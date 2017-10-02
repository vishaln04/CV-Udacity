% Generating Gaussian Noise using rand function
clc;
close all;
clear all;

Gamma = 2; % Increasing the Gamma increases the noise
noise = randn([1, 10000]).*Gamma;
[n,x] = hist(noise, linspace(-3,3,21));
plot(x,n);