I = imread('avg_q1.png');
imshow(I)

[L,Centers] = imsegkmeans(I,10);
B = labeloverlay(I,L);
imshow(B)

subplot(1,2,1), imshow(I),title('Original Image');
subplot(1,2,2), imshow(B), title('Labeled Image');