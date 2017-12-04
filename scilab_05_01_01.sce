function y=testferma(a,n);
    if modulo(a^(n-1),n)==1 then
        y=%T;
    else
        y=%F;
    end
endfunction
