%% EXPERIMENT-8


%%
% *AIM:* 
%%

% _ Write a program to perform convolution operation on an image using a 3x3 mask and 5x5 mask._

%%
% _ _ _ _Name-Akash Deep Das_ _ _ _ 
%%
% _ _ _ _roll no-cse 047_ _ _ _
%
%%
 % *CODE*


%%
% *OUTPUT*




clear all;
clc;
%read an image
org_image=imread('C:\Users\AKASH DEEP DAS\Downloads\dipimage.jpg');
noisy_image=imnoise(org_image,'salt & pepper',0.1);
h1=1/9*ones(3,3);
h2=1/25*ones(5,5);
conv_image_h1=conv2(noisy_image,h1,'same');
conv_image_h2=conv2(noisy_image,h2,'same');
subplot(2,2,1),imshow(org_image),title('original image'),
subplot(2,2,2),imshow(noisy_image),title('noisy image'),
subplot(2,2,3),imshow(uint8(conv_image_h1)),title('3x1 mask convolution iamge'),
subplot(2,2,4),imshow(uint8(conv_image_h2)),title('5x5 mask convolution iamge')