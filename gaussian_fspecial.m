% Gaussian noise using fspecial
clc;
close all;
clear all;

pkg load image;

hsize = 31;    % Size of the kernel
sigma = 5;     % sigma value

img = imread('boat.png');
subplot(2,2,3);
imshow(img);
title('Original Image');

h = fspecial('gaussian', hsize, sigma);
subplot(2,2,1);
surf(h);
title('Gaussian filter');

subplot(2,2,2);
imagesc(h);
title('Image of Gaussian filter');

blurred_boat = imfilter(img, h);
subplot(2,2,4);
imshow(blurred_boat);