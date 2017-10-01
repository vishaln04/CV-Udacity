clc;
close all;
clear all;

img = imread('lena.png');
subplot(2,3,1);
imshow(img);
title('Original Image');

% Size of an Image
img_size = size(img)

% Datatype of the Image
img_dt = class(img)

% Cropped Image
img_cropped = img(10:100, 30:300);
subplot(2,3,2);
imshow(img_cropped);
title('Cropped Image');

% Color plane
img_red = img(:,:,1);
subplot(2,3,3);
imshow(img_red);
title('Red Plane of Image');

% Scaling of the Image
function result = scale(imag, value)
  result = imag .* value;
endfunction

subplot(2,3,4);
imshow(scale(img, 1.5));
title('Scaled Image by 1.5');