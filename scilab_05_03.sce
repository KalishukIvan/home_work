function y=transmuteandpoly(n,b)
//Аналог алгоитма Евклида
//присваиваем пустую строку
    y='';
    while %t
        //берем первый остаток от деления на базу
        a=string(modulo(n,b));
        //записыаем его первым числом(склеиваем строки)
        y=a+y;
        //убираем учетнный остаток
        n=int(n/b);
        //проверяем, нужно ли продолждать цикл
        if n==0 then
            break
        end
    end
    disp(y);
    //проверка на полиномиальность
    if y==strrev(y) then
        disp(%T);
    else
        disp(%F);
    end
endfunction
