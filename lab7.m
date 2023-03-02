%% EXPERIMENT-7


%%
% *AIM:* 
%%
% _ Write a program to perform histogram equalization on an image and plot the histogram of each by using:
% i) imadjust
% ii) histeq
% iii) adapthisteq function ._
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
org_image=imread('C:\Users\AKASH DEEP DAS\Downloads\dipimage.jpg');
a=imadjust(org_image);
b=histeq(org_image);
c=adapthisteq(org_image);
subplot(2,4,1),imshow(org_image),title('Original Image'),
subplot(2,4,2),imshow(a),title('inadjust equalized image'),
subplot(2,4,3),imshow(b),title('histeq equalized image'),
subplot(2,4,4),imshow(c),title('adapthisteq equalized Image'),
subplot(2,4,5),imhist(org_image),title('histogram Original Image'),
subplot(2,4,6),imhist(a),title('histogram of inadjust Image'),
subplot(2,4,7),imhist(b),title('histogram of histeqOriginal Image'),
subplot(2,4,8),imhist(c),title('histogram of adapthisteq')