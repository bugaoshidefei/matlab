function [x] = szxhcl1_3(XK)
N=length(XK);
n=0:1:N-1;
k=0:1:N-1;
WN=exp(-1i*2*pi/N);
nk=n'*k;
WNnk=WN.^nk;
WNnk1=inv(WNnk)
x=XK*WNnk1;
end
