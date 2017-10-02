% Effect of diffrent sigma values on gaussian noise
clc;
clear all;
close all;

pkg load image;

hsize = 31;
i=2;

img = imread('boat.png');
subplot(1,4,1);
imshow(img);

for sigma=1:3:10
  h = fspecial('gaussian', hsize, sigma);
  out = imfilter(img,h);
  subplot(1,4,i);
  imshow(out);
  i = i+1;
end