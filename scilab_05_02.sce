function [y1,y2]=couple_of_primes(n)
    //создаем матрицу из случайных чисел
    for i=1:(n+1)
        rand_matrix(1,i)=round(abs(rand()*10^6));
    end
    //выводим её
    disp(rand_matrix);
    //поэлементно перебираем матрицу и стравниваем её поэлементно с самой собой на предмет делимости на количество за вычетом одного
    for i1=1:(n+1)
        for i2=1:(n+1)
            //проверка условия задачи
            if modulo(abs(rand_matrix(1,i1)-rand_matrix(1,i2)),n)==0 then
                //присваеваем подходящие значения
                y1=rand_matrix(1,i1);
                y2=rand_matrix(1,i2);
                //останавливаем цикл при первом правильном значении
                break;
            end
        end
    end
    disp(y1,y2);
endfunction
