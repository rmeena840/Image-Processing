function [output]  = Linedraw( input )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
image = input;
image = im2bw(image);
s = size(image);
temp = 1;  
C = cell(10);
r=1;
cnt=0;
for i=1:s(1)
    f=0;
    for j=1:s(2)
        if  image(i,j)== 0
            f = 1;
            cnt = cnt+1;
            break;
        end 
    end    
    if f==0  
       if i~=temp+1 && cnt>0        
        figure,imshow(image(temp+1:i-1,:)); 
        C{r} = image(temp+1:i-1,:);
        r=r+1;
         %%VLinedraw(image(temp+1:i-1,:));
       end                 
      temp=i; 
    end   
end
for i=1:r
  VLinedraw(C{i});
end  
output= image;
end

