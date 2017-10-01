clc;
close all;
clear all;

img = imread('lena.png');
imshow(img);

% Size of an Image
img_size = size(img)

% Datatype of the Image
img_dt = class(img)

% Cropped Image
img_cropped = img(10:100, 30:300);
imshow(img_cropped);

% Color plane
img_red = img(:,:,1);
imshow(img_red);