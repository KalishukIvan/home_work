function y=paritybit(x);
    //задаём счетчик
    k=0;
    res=0;
    //перевоодим число в двоичную систему
    bin=dec2bin(x);
    //перебираем все знаки в двоичной записи числа, считаем единицы
    for i=1:(length(bin))
        if part(bin,i)=='1' then
            k=k+1;
        end
        //если их количество нечётно - дописываем бит четности
        if modulo(k,2)~=0 then
            res='1'+bin;
        end
    end
    y=res;
endfunctionfunction y=paritybit(x);
    //задаём счетчик
    k=0;
    res=0;
    //перевоодим число в двоичную систему
    bin=dec2bin(x);
    //перебираем все знаки в двоичной записи числа, считаем единицы
    for i=1:(length(bin))
        if part(bin,i)=='1' then
            k=k+1;
        end
        //если их количество нечётно - дописываем бит четности
        if modulo(k,2)~=0 then
            res='1'+bin;
        end
    end
    y=res;
endfunction
