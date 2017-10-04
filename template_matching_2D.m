% Find template 2D


pkg load image; % AFTER function definition

% Test code:
man = imread('cameraman.tif');
imshow(man);
glyph = tablet(75:165, 150:185);
imshow(glyph);

[y x] = find_template_2D(glyph, tablet);
disp([y x]); % should be the top-left corner of template in tablet

% NOTE: Function definition must be the very first piece of code here!
function [yIndex xIndex ] = find_template_2D(glyph, man)
    % TODO: Find template in img and return [y x] location
    % NOTE: Turn off all output from inside the function before submitting!
    
    c = normxcorr2(glyph, man);
    [yRaw xRaw] = find(c == max(c(:)));
    yIndex = yRaw - size(template, 1) + 1;
    xIndex = xRaw - size(template, 1) + 1;
endfunction