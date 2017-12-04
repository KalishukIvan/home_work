function [k,Gcd]=algoritm_Evklida(a,b)
    k=0
    while %T
        c=modulo(a,b);
        a=b;
        b=c;
        k=k+1;
        if c==0 then
            Gcd=a
            disp(a,'gcd');
            disp(k,'amount of steps');
            break
        end
    end
endfunction

a1=int(input('a'));
b1=int(input('b'));
c1=int(input('c'));
[s1,s2]=algoritm_Evklida(a1,a2);
d=s2;
if modulo(c,d)~=0 then
    disp(0);
else
    for i=-(10^3):10^3
        for j=-(10^3):10^3
            if a*i+b*j==c then
                disp(i,'x=');
                disp(j,'y=');
                break;
            end
        end
    end
end
