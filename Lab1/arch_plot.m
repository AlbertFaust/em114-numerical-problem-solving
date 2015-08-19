bw = imread('arch.jpg');

figure

image(bw) 

imagesc(-198,-408,bw)    
set(gca,'YDir','normal');
grid on
hold on
plot(x,f,'r')
