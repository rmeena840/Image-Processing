function g = EdgeDetect( original)
%EDGEDETECT Summary of this function goes here
%   Detailed explanation goes here
original = im2double(original);
original = rgb2gray(original);
s = size(original);
r1 = zeros(s);
r2 = zeros(s);
original1 = padarray(original,[1 1]);
mask1 = [-1 -1 -1;0 0 0;1 1 1];
mask2 = [-1 0 1 ;-1 0 1;-1 0 1];
for i = 2:s(1)
    for j = 2:s(2)
         temp1 = original1(i-1:i+1,j-1:j+1).*mask1;
         temp2 = original1(i-1:i+1,j-1:j+1).*mask2;
         r1(i-1,j-1) = sum(temp1(:));
         r2(i-1,j-1) = sum(temp2(:));
    end 
end
r1 = r1.*r1;
r2 = r2.*r2;
r3 = r1 + r2;
r3 = r3.^(0.5);
g = r3;