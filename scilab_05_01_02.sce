//сколько существует псевдопростых чисел 

n=input('input 10^2,10^3 or 10^6');
number=0;
//циклом выполняем тест ферма, считаем количество
for i=1:n
    if modulo(2^(i-1),i)==1 then
        number=number+1;
        disp(i);
    end
end
disp(number,);
