function [output]  = VLinedraw( input )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
image = input;
s = size(image);
last=1;
cnt=0;
C = cell(100);
r=1;
for i=1:s(2)
    f=0;
    f1=0;
    for j=1:s(1)
        if  image(j,i)== 0
            f = 1;
            cnt=0;
            break;
        end 
        if i<s(2) && image(j,i+1)==0
            f1 =1;
            break;
        end    
    end    
    if f==0 && f1==0
       if cnt==4    
         for j=1:s(1)
             image(j,i)=0;
         end 
         cnt=0;
         figure,imshow(image(:,last+1:i-1));
         C{r} = image(:,last+1:i-1);
         %%cdraw(image(:,last+1:i-1));
         last=i;
       else
           cnt = cnt + 1;
       end       
    end   
end
for i=1:r 
    cdraw(C{i});
end    
output= image;
end

