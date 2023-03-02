%% EXPERIMENT-9


%%
% *AIM:* 
%%
% _Write a program to add salt & pepper noise in an image and_
%%
% _remove the noise by median filter method using median filter inbuilt function._

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
noisy_image=imnoise(org_image,'salt & pepper',0.2);
filtered_image=menfilt2(noisy_image,[3,3]);
subplot(1,3,1),imshow(org_image),title('orginal image'),
subplot(1,3,2),imshow(noisy_image),title('noisy image'),
subplot(1,3,3),imshow(filtered_image),title('filtered image')