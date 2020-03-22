f1=zeros(128,128);
for x=24:104
    for y=48:80
        f1(x,y)=255;
    end
 end
 subplot(2,2,1);
 imshow(f1);
 xlabel('(a)');%f1(x,y)
 axis on;
 
 FFT_f1=fft2(f1);
 FFT_f1= abs(FFT_f1);
 tmax=FFT_f1(1,1);
 tmin=FFT_f1(1,1);
for x=1:128
    for y=1:128
        if tmax<FFT_f1(x, y)
            tmax=FFT_f1(x, y);
        end
        if tmin >FFT_f1(x,y)
            tmin =FFT_f1(x,y);
        end
    end
end

delta=tmax-tmin;
for x=1:128
    for y=1:128
        FFT_f1(x,y) =255 *(FFT_f1(x,y)-tmin)/delta;
    end
end

f2=f1;
for x=1:128
    for y=1:128
        f2(x,y)=(-1)^(x+y)*f1(x,y);
    end
 end
FFT_f2=fft2(f2);
FFT_f2=abs(FFT_f2);
tmax =FFT_f2(1,1);
tmin =FFT_f2(1,1);
for x=1:128
    for y=1:128
        if tmax<FFT_f2(x, y)
            tmax=FFT_f2(x, y);
        end
        if tmin >FFT_f2(x,y)
            tmin =FFT_f2(x,y);
        end
    end
end

delta=tmax-tmin;
for x=1:128
    for y=1:128
        FFT_f2(x,y) =255 *(FFT_f2(x,y)-tmin)/delta;
    end
end
 subplot(2,2,2);
 imshow(FFT_f2);
 xlabel('(b)')%中心化频谱

 axis on;

f3=imrotate(f1, -45, 'bilinear');
for x=1:128
    for y=1:128
        f3(x,y)=(-1)^(x+y)*f3(x,y);
    end
 end
subplot(2,2,3);
imshow(f3);
xlabel('(c)');%原图像顺时针旋转45度
FFT_f3=fft2(f3);
FFT_f3= abs(FFT_f3);
tmax=FFT_f3(1,1);
tmin=FFT_f3(1,1);
for x=1:181
    for y=1:181
        if tmax<FFT_f3(x, y)
            tmax=FFT_f3(x, y);
        end
        if tmin >FFT_f3(x,y)
            tmin =FFT_f3(x,y);
        end
    end
end

delta=tmax-tmin;
for x=1:181
    for y=1:181
        FFT_f3(x,y) =255 *(FFT_f3(x,y)-tmin)/delta;
    end
end
 subplot(2,2,4);
 imshow(FFT_f3);
 xlabel('(d)');%原图像顺时针旋转45度的中心化频谱
 axis on;

