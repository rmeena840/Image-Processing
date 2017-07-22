function g=global_thresholding(original)
count = 0;
T = mean2(original);
done = false;
while -done
count =count + 1;
g = original > T;
Tnext = 0.5*(mean(original(g)) + mean(original(-g)));
done = abs(T - Tnext) < 0.5;
T = Tnext;
end
g = im2bw(original, T/255);