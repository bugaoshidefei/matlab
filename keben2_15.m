clear all;
a=[2 6.5 3i 3.5 6 4+2i];
real_array=[];
complex_array=[];
for i=1:length(a)
    if isreal(a(i))==1
        real_array=[real_array a(i)];
    else
        complex_array=[complex_array a(i)];
    end
end
real_array
complex_array