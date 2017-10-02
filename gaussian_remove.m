% Removing noise with gaussian filter
clc;
clear all;
close all;

pkg load image;

% Load an Image
img = imread('boat.png');
subplot(1,3,1);
imshow(img);
title('Original image');

% Add some noise
noise_sigma = 35;
noise = randn(size(img)) .* noise_sigma;
noisy_img = img + noise;
subplot(1,3,2);
imshow(noisy_img);
title('Noisy Image');

% Create a Gaussian filter
hsize = 11;
filter_sigma = 2;
filter = fspecial('gaussian', hsize, filter_sigma);

% Apply it to remove the noise
smoothed_img = imfilter(noisy_img, filter);
subplot(1,3,3);
imshow(smoothed_img);
title('Smoothed Image');