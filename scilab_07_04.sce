num=5463458053;
k=1;
m=1;
for m=1:10^6
    k=k*m;
    k=modulo(k,num);
end
format(13);
disp(k)
