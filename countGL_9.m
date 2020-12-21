function y = countGL_9(im , v)
% COUNTGL Counts the number of pixels in each graylevel of v in uint8 image, returns y.
% where y(i) is the number of pixels with graylevel between v(i) and v(i-1).
y= zeros(1, length(v)-1);%create vector of length v-1
for i = 1:length(v)-1% for loop of length v-1
   y(i) = length(find(v(i) <= im & im < v(i+1)));%fill vector with the number of instances where a pixel had a value between different grayscale values identified in input, then find length.
end
return



