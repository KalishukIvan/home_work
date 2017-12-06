function res=day(a,b,c)
    //а.в.с в данном случае день-месяц-год, задаем началные как 1.01.2000, зная что это суббота
    c0=2000;
    b0=01;
    //в1-в12 - количество дней в каждом дне соответственно, количество дней в феврале будет посчитано далее
    b1=31;
    b3=31;
    b4=30;
    b5=31;
    b6=30;
    b7=31;
    b8=31;
    b9=30;
    b10=31;
    b11=30;
    b12=31;
    //берем разницу месяцев, чтобы посчитать сколько дней было в прошедших месяцах
    db=b-b0;
    //берем разницу лет, минус один что бы посчитать только прошедшие года и кол-во дней в них
    dC=(c-1)-c0;
    //считаем кол-во высокосных-невысокосных лет в предыдущих годах
    Vis=int(dC/4);
    neVis=dC-Vis;
    //считаем количество дней всего, зная количество дней в высокосном/невысокосном году
    totalone=Vis*366+neVis*365;
    //проверяем текущий год на высокосность
    currentyear=modulo(c-c0,4);
    if currentyear==0 then
        //заносим в соответствуюзубю ячейку соответствующее количество дней
        b2=29
    else
        b2=28
    end
    //проверяем сколько полных месяцей прошло и считаем количество дней в них в общем
    select db
    case 1 then
        months=b1
    case 2 then
        months=b1+b2
    case 3 then
        months=b1+b2+b3
    case 4 then
        months=b1+b2+b3+b4
    case 5 then
        months=b1+b2+b3+b4+b5
    case 6 then
        months=b1+b2+b3+b4+b5+b6
    case 7 then
        months=b1+b2+b3+b4+b5+b6+b7
    case 8 then
        months=b1+b2+b3+b4+b5+b6+b7+b8
    case 9 then
        months=b1+b2+b3+b4+b5+b6+b7+b8+b9
    case 10 then
        months=b1+b2+b3+b4+b5+b6+b7+b8+b9+b10
    case 11 then
        months=b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11
    case 12 then
        months=b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12
    end
    //складываем количество дней в годах с количеством дней в месяцах
    totaltwo=totalone+months;
    //добавляем количество дней в дате и 5, поскольку исходный день недели - суббота
    totalthree=totaltwo+a+5;
    //берем полученое число по модулю семи
    daynum=modulo(totalthree,7);
    //выводим соответсвтующщий день
    select daynum
    case 6 then
        disp('Monday')
    case 0 then
        disp('Tuesday')
    case 1 then
        disp('Wednesday')
    case 2 then
        disp('Thursday')
    case 3 then
        disp('Friday')
    case 4 then
        disp('Saturday')
    case 5 then
        disp('Sunday')
    end
endfunction
