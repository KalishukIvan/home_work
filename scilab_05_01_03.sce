//генерируем матрицу простых чисел 1...10*6
p=primes(10^6);

//генерируем число, умножаем его на 10**4, убираем минус и числа после запятой,
//с помощью цикла заносим в матрицу
for i=1:10^7
    rand_matrix(1,i)=round(abs(rand()*10^4));
end

//функция теста Ферма
function y=testferma(a,n);
    if modulo(a^(n-1),n)==1 then
        y=%T;
    else
        y=%F;
    end
endfunction


//задаем начальную переменную
totalprimes=0
//перебираем элементы первой матрицы, проверяем на равенство с каждым из второй, если истина - считаем
for i1=1:(size(rand_matrix) (1,2))
    tmpbox=rand_matrix(1,i1);
    for i2=1:(size(p) (1,2))
        if tmpbox==p(1,i2) then
            totalprimes=totalprimes+1;
        end
    end
end
disp(totalprimes,'ptimes');


totpsd=0
//перебираем все случайные числа в матрице
for i3=1:(size(rand_matrix) (1,2));
    //задаем три случайные базы
    a=round(abs(rand()*10^2));
    b=round(abs(rand()*10^2));
    c=round(abs(rand()*10^2));
    //теста Ферма по трем базам, считаем в случае истины
    if fermatest(a,rand_matrix(1,i3))==fermatest(b,rand_matrix(1,i3))==fermatest(c,rand_matrix(1,i3))==%t then
        totpsd=totpsd+1;
    end
end
disp(totpsd,' псевдопростых числа над 3-мя базами');
