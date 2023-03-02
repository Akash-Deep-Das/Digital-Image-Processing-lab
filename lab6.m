%% EXPERIMENT-6


%%
% *AIM:* 
%%
%%
% _Write a program to convert grey scale image to negative image._
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
%read an image
org_image=imread('C:\Users\AKASH DEEP DAS\Downloads\imgonline-com-ua-2D-Picture-k00zEbu5ovfH.jpg');
[row col]=size(org_image);
max_pixel=max(max(org_image));
for i=1:1:row
    for j=1:1:col
        negative_image(i,j)=255-org_image(i,j);
    end
end
subplot(1,2,1),imshow(org_image),title('Original Image'),
subplot(1,2,2),imshow(negative_image),title('Negative Image'),
