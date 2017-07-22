function [output]  = cdraw( input )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
image = input;
s = size(image);
last=1;
for i=1:s(2)
    f=0;
    for j=2:s(1)
        if  image(j,i)== 0
            f = 1;           
            break;
        end
        
    end  
    f1=0;
    if f==0             
         for j=1:s(1)
            if i>1 && image(j,i-1)==0
              f1=1;
              break;
            end  
         end  
         if f1==1
         figure,imshow(image(:,last+1:i-1));    
         last=i;
         end
    end       
end   


output= image;
end

