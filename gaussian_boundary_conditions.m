% Resolving boundary conditions with different methods
clc;
clear all;
close all;

pkg load image;

% Load an Image
img = imread('lena.png');
subplot(2,3,1);
imshow(img);
title('Original image');

% Create a Gaussian filter
hsize = 11;
filter_sigma = 2;
filter = fspecial('gaussian', hsize, filter_sigma);

% Method-1 clip filter
clip = imfilter(img, filter, 0);
subplot(2,3,2);
imshow(clip);
title('Clip Filter');

% Method-2 wrap around
wrap = imfilter(img, filter, 'circular');
subplot(2,3,3);
imshow(wrap);
title('Wrap around Filter');

% Method-3 copy filter
copy = imfilter(img, filter, 'replicate');
subplot(2,3,4);
imshow(copy);
title('Copy Filter');

% Method-4 reflect across edge
reflect = imfilter(img, filter, 'symmetric');
subplot(2,3,5);
imshow(reflect);
title('Reflect across edge Filter');