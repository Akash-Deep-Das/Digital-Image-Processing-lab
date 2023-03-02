%% EXPERIMENT-10


%%
% *AIM:* 
%%
% _Write a program to add 20% noise in an image and remove it by median filter method using 3x3 mask._
%%
% _ _ _ _Name-Akash Deep Das_ _ _ _ 
%%
% _ _ _ _roll no-cse 047_ _ _ _
%
%%
 % *CODE*


%%
% *OUTPUT*



close all;
clear all;
clc;
org_image=imread('C:\Users\AKASH DEEP DAS\Downloads\image (1).jpg');
noisy_image=imnoise(org_image,'salt & pepper',0.2);

[a,b]=size(org_image);
new_image=noisy_image;
for i=2:a-1
    for j=2:b-1
        if (noisy_image(i,j)==0||noisy_image(i,j)==255)
            filter=[noisy_image(i-1,j-1),noisy_image(i-1,j),noisy_image(i-1,j+1),noisy_image(i,j-1),noisy_image(i,j),noisy_image(i,j+1),noisy_image(i+1,j-1),noisy_image(i+1,j),noisy_image(i+1,j+1)];
            new_image(i,j)=median(filter);
        end
    end
end

%filtered_image=medfilt2(noisy_image,[3,3]);
subplot(1,3,1),imshow(org_image),title('original image'),
subplot(1,3,2),imshow(noisy_image),title('Noisy image'),
subplot(1,3,3),imshow(new_image),title('filtered Image')
