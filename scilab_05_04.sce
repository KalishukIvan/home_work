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
