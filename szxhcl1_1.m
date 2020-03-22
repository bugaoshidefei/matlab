
n=0:100;
k=-200:200;
w=(pi/100)*k;
x1=cos(pi*n/2);
X=x1*exp(-1i*n'*w);
subplot(2,2,1);
plot(w,abs(X)),grid on
xlabel('w')
ylabel('|X|')
subplot(2,2,2);
plot(w,angle(X)),grid on
xlabel('w')
ylabel('angle')

n=0:100;
k=-200:200;
w=(pi/100)*k;
x2=cos(pi*n/2).*exp(1i*pi*n/4);
X2=x2*exp(-1i*n'*w);
subplot(2,2,3);
plot(w,abs(X2)),grid on
xlabel('w')
ylabel('|X2|')
subplot(2,2,4);
plot(w,angle(X2)),grid on
xlabel('w')
ylabel('angle')
