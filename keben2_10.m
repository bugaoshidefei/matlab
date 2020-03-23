% array=linspace(1,100,100)
% c={3,[4 7;6 6;80 9],'string';sin(pi/8),3>10,'code'};%单元数组的寻访
% a=c(2,2)
% class(a)
% b=c{2,2}
% class(b)
a{1,1}='cellclass';%单元数组的操作
a{1,2}=[1 2 2];
a{2,1}=['a','b','c'];
a{2,2}=[9 5 6];
a
b={'Jan'};
c={a b};
a{2,1}=[];
a
a=reshape(a,1,4)
