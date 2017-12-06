function y=ten2two(n)
    m=n;
    y='';
    while %t
        //первый остаток от деления на базу
        a=string(modulo(n,2));
        //записыаем его первым числом
        y=a+y;
        //убираем остаток
        n=int(n/2);
        //проверяем, нужно ли продолждать цикл
        if n==0 then
            break
        end
    end
endfunction
