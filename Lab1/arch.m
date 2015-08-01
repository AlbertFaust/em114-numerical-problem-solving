close all
clear all
clc

bw = imread('arch.jpg');

figure

image(bw) 

imagesc(-201,-408,bw)    
set(gca,'YDir','normal');
grid on
hold on
plot(0,0,'r*')
plot(143,-175,'r*');
plot(-143,-175,'r*');
