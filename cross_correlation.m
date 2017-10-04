% Detecting the peak where filter matches the image
clc;
clear all;
close all;

pkg load image;

% Load the Image
cameraman = imread('cameraman.tif');
face = cameraman(30:120, 50:150);

% Normalized cross_correlation
c = normxcorr2(cameraman, face);
figure, surf(c), shading flat;