%% EXPERIMENT-3


%%
% *AIM:* 
%%

% _ Read an image and perform:
% i. Brightness Enhancement
% ii. Brightness Supression
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
%read image
org_image=imread('C:\Users\AKASH DEEP DAS\Downloads\dipimage.jpg');

%increase the brightness
bright_enhance_image=org_image+50;
%supress the brightness
bright_supress_image=org_image-50;

subplot(2,3,1),imshow(org_image),title('orginal image'),
subplot(2,3,2),imshow(bright_enhance_image),title('brightness enhanced'),
subplot(2,3,3),imshow(bright_supress_image),title('bright supressed'),
subplot(2,3,4),imhist(org_image),title('histogram of original image'),
subplot(2,3,5),imhist(bright_enhance_image),title('histogram of enhanced image'),
subplot(2,3,6),imhist(bright_supress_image),title('histogram of supressed iamge')
