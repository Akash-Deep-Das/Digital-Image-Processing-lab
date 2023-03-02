%% EXPERIMENT-2


%%
% *AIM:* 
%%
%%
% _ Write a MATLAB Code to read an image. Increase the size of
% matrix by doubling the number of Rows and Columns._
%%
% _ _ _ _Name-Akash Deep Das_ _ _ _ 
%%
% _ _ _ _roll no-cse 047_ _ _ _
%
%%
 % *CODE*


%%
% *OUTPUT*
 
% MATLAB program for Zoom image
% read image
% MATLAB program for Zoom image
% read image
imageVar = imread('C:\Users\AKASH DEEP DAS\Downloads\dipimage.jpg');
%read image size
[m,n] = size(imageVar);
% zooming factor
z = 4;
% Pixel replication using nested for loops
for i = 1:m
for j = 1:n
 for k = 1:z
 zoomedImage((i-1)*z+k,(j-1)*z+k) = imageVar(i,j);
 end
end
end
% showing original image with title original
imshow(imageVar), title('Original');
% showing zoomed image in another figure with title zoomed
figure, imshow(zoomedImage), title('Zoomed')

