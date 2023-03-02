%% EXPERIMENT-1


%%
% *AIM:* 
%%
%%
%%
% _Write a MATLAB Code to read an image of size 512X512._
%%
% _Reduce the size of matrix by eliminating the even number of Row and Column._

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
img=imread('C:\Users\AKASH DEEP DAS\Downloads\image.jpg');

[x,y]=size(img);
a=img;
for i=1:x
    r=rem(i,2);
    if(r==0)
        try,a(i,:)=[];catch,end
        try,a(:,i)=[];catch,end
    end
end

subplot(1,2,1),imshow(img),title('Original Image'),
subplot(1,2,2),imshow(a),title('After remove the row ,col')



