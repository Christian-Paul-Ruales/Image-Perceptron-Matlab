function y1 = resizedImageBW(name)
img1 = imread(name);
grayImage = rgb2gray(img1);
%imshow(grayImage)
bw = im2bw(grayImage);
resized=imresize(bw,[40 30]);
%imshow(resized);

reshaped = reshape(resized,1200, 1);
y1 = transpose(reshaped);
end