function [XK] = szxhcl1_2(xn)
N=length(xn);
n=0:1:N-1;
k=0:1:N-1;
WN=exp(-1i*2*pi/N);
nk=n'*k;
WNnk=WN.^nk;
XK=xn*WNnk;
end

