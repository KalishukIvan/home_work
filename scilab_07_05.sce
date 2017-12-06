function y1=ModExp1(a,e,n)
    timer();
    for i=i:e
        a=a*a;
        a=modulo(a,n);
    end
    y1=a;
    time=timer();
    disp(a);
    disp('time',time)
endfunction

function y2=ModExp2(a,e,n)
    timer();
    for i=i:e
        a=a^2;
        a=modulo(a,n);
    end
    y1=a;
    time=timer();
    disp(a);
    disp('time',time)
endfunction
