%% EXPERIMENT-4

%%
%%
% *AIM:* 
%%
% _Read an image and perform:
% i. Contrast Enhancement
% ii. Contrast Suppresssion
% Plot the histogram._
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
org_image=rgb2gray(org_image);
% increase the contrast
contrast_enhance_image=org_image*1.2;
%supress the contrast
contrast_supress_image=org_image*0.8;
subplot(2,3,1),imshow(org_image),title('Original Image'),
subplot(2,3,2),imshow(contrast_enhance_image),title('Contrast Enhanced'),
subplot(2,3,3),imshow(contrast_supress_image),title('Contrast Supressed'),
subplot(2,3,4),imhist(org_image),title('Histogram of Orginal Image'),
subplot(2,3,5),imhist(contrast_enhance_image),title('Histogram of Enhanced Image'),
subplot(2,3,6),imhist(contrast_supress_image),title('Histogram of Supressed image')

