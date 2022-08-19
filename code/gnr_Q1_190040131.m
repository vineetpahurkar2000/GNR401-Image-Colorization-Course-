x=imread('data_q1.jpg');
x=rgb2gray(x);
[c,f]=size(x);
for ik=1:3
    for jk=1:3
        w(ik,jk)=1/9;
    end
end
for i=2:c-1
    for j=2:f-1
        sum=0;
        for k=1:3
            for l=1:3
                sum=sum+w(k,l)*x(i+k-2,j+l-2);
            end
        end
        g(i-1,j-1)=sum;
    end
end
imshow(g);
hold on;

i=imread("avg_q1.png");
ih=histeq(i);

subplot(2,2,1), imshow(i),title('Original avraging image');
subplot(2,2,2), imshow(ih), title('Histrogram eqalized image');
subplot(2,2,3), imhist(i),title('Histrogram of original image');
subplot(2,2,4), imhist(ih),title(' Histrogram of equalized image');