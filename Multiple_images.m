clc;
clear all;
close all;

% Loading the first Image
img_boat = imread('boat.png');
subplot(2,3,1);
imshow(img_boat);
title('Boat Image')

% Loading the second Image
img_barbara = imread('barbara.png');
subplot(2,3,2);
imshow(img_barbara);
title('Barbara Image');

% Direct adding two Images
Sum = img_barbara + img_boat;
subplot(2,3,3);
imshow(Sum);
title('Direct Sum');

% Average of the Images
Avg = img_barbara/2 + img_boat/2;
subplot(2,3,4);
imshow(Avg);
title('First Divide then Add');

% Average_alt
Avg_alt = Sum/2;
subplot(2,3,5);
imshow(Avg_alt);
title('First add then Divide');

% Blending of Images
function result = blend(a, b, alpha)
  result = alpha * a + (1-alpha) * b;
endfunction
subplot(2,3,6);
imshow(blend(img_barbara,img_boat,0.85));
title('Blending of Images');