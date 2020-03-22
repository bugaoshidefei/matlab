%双线性内插法放大lenna图像
I = imread('E:\360Downloads\lenna.png'); 
I_in = im2double(I); 
m = size(I_in,1);
n = size(I_in,2);
% 放大tn倍，放大几倍修改tn值
tn = 2;    
T = [tn,0,0;0,tn,0;0,0,1];
I_out = ones(m*tn,n*tn);
for i = 1:m*tn
    for j = 1:n*tn
        z = [i,j,1]/T;
        x = z(1);
        y = z(2);
        if (x>=1 && y>=1) && (x<=m && y<=n)  
        	if (rem(x,1))||(rem(y,1))
                x0 = floor(x);
                x1 = ceil(x);
                y0 = floor(y);
                y1 = ceil(y);
                a = I_in(x0,y0);
                b = I_in(x0,y1);
                c = I_in(x1,y0);
                d = I_in(x1,y1);
                g1 = a + (x-x0) * (c - a);
                g2 = b + (x-x0) * (d - b);
                I_out(i,j) = g1 + (y - y0) * (g2 - g1);     
       		else    
                I_out(i,j) = I_in(x,y);
            end
         end
     end
end

% 显示原图像和放大后的输出图像
figure;imshow(I);
figure;imshow(I_out);