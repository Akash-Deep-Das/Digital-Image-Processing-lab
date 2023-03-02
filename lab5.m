%% EXPERIMENT-5


%%
% *AIM:* 
 
%%
% _Write a program to convert grey scale image to binary image._
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
org_image=imread('C:\Users\AKASH DEEP DAS\Downloads\image (1).jpg');
[row col]=size(org_image);
%set a threshold value
t=140;
for i=1:1:row
    for j=1:1:col
        if org_image(i,j)<t
            binary_image(i,j)=0;
        else
            binary_image(i,j)=1;
        end
    end
end
subplot(1,2,1),imshow(org_image),title('Original Image'),
subplot(1,2,2),imshow(binary_image),title('Binary Image')

























