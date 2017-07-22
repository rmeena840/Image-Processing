function g = LineDetect(original)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
original = im2double(original);
original = rgb2gray(original);
s = size(original);
r = zeros(s);

original1 = padarray(original,[1 1]);
mask = [-1 -1 -1;1 1 1;-1 -1 -1];

for i = 2:s(1)
    for j = 2:s(2)
         temp = original1(i-1:i+1,j-1:j+1).*mask;         
         r(i-1,j-1) = sum(temp(:));         
    end 
end
g = r;


end