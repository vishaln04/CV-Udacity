% Sobel Operator
clc;
clear all;
close all;

pkg load image;

% Load an Image
img = im2double(imread('boat.png'));
subplot(2,2,1);
imshow(img);
title('Original image');

% Sobel Operator
filt = fspecial("sobel");
out_sobel = imfilter(img, filt);
subplot(2,2,2);
imagesc(out_sobel);
colormap gray;
title('Sobel Operator');

% prewitt operator
filt = fspecial("prewitt");
out_prewitt = imfilter(img, filt);
subplot(2,2,3);
imagesc(out_prewitt);
colormap gray;
title('prewitt operator');

% kirsch operator
filt = fspecial("kirsch");
out_kirsch = imfilter(img, filt);
subplot(2,2,4);
imagesc(out_kirsch);
colormap gray;
title('kirsch operator');