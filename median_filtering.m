% Median Filtering
clc;
clear all;
close all;

pkg load image;

% Load an Image
img = imread('lena.png');
subplot(1,3,1);
imshow(img);
title('Original image');

% Add Salt & Pepper noise
noisy_img = imnoise(img, 'salt & pepper', 0.02);
subplot(1,3,2);
imshow(noisy_img);
title('After adding salt & pepper noise');

% Apply the median filter
med_img = medfilt2(noisy_img);
subplot(1,3,3);
imshow(med_img);
title('After median filtering');