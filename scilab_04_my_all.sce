timer();
                       //Простые числа
//Создаём матрицу простых чисел
a=primes(100000);
disp(a)
//-------------------------------------------------------------------

                       //Количество близнецов

i=1;
j=2;
f=0;
N=size(a) (1,2);
while j<=N
    if a(1,j)-a(1,i)==2 then
        f=f+1;
    end
    i=i+1;
    j=j+1;
end
disp(f,"= колчиество чисел близнецов среди 10^6");
time1=timer();

//--------------------------------------------------------------------
timer();
                       //Простые числа до n
n=input('Насколько большое число вы хотите?');
if n>10**6 then
    disp('')
    n=input('Введите повторно ')
else
    primes_n=primes(n);
    amount_primes_n=size(primes_n);
    disp(amount_primes_n,'количество простых чисел до n')
end

time2=timer();

//--------------------------------------------------------------------
timer()
                       //Посторение графиков
                       
for ind=1:250 //перебор значений от 1 до 250
    A=primes(ind); //простые числа до индекса
    B=size(A) (1,2); //количество этих чисел
    plot(ind,B,".r"); //строим точку с координатами индекс-количество чисел
end
//строим график y=x/ln(x)
x=[0:0.01:250]; 
y=x./log(x);
plot (x,y,".b")

time3=timer();

//--------------------------------------------------------------------
timer();
                       //Тест простоты

p=primes(10^11); //матрица простых чисел до 10^11
n1=size(p);
n=1;
while p(n)<10^10 //замена всех простых чисел <10^10 нулями
    p(n)=0;
    n=n+1;
end
//получили матрицу простых десятизначных чисел

kilkist=0;
//дополнительные переменные, чтобы ускорить алгоритм:
x1=1;
x2=1;
x3=1;
x4=1;
x5=1;
x6=1;
x7=1;

//генерирование чисел:
N2=10^7;
x=rand(1,N2);
x=x*10^11;

for i=1:1:N2
    while x(i)<10^10  //якщо елемент має менше ніж 10 цифр - домножаємо його на 10
        x(i)=x(i)*10  //доки воно не буде 10-цифровим
    end
    x(i)=round(x(i));  //округлення елемента
    //используем функцию деления нацело, чтобы откинуть числа которые делятся на первые 7 простых:
    x1=modulo(x(i),2);
    x2=modulo(x(i),3);
    x3=modulo(x(i),5);
    x4=modulo(x(i),7);
    x5=modulo(x(i),11);
    x6=modulo(x(i),13);
    x7=modulo(x(i),17);
    if (x1==0) | (x2==0) | (x3==0) | (x4==0) | (x5==0) | (x6==0) | (x7==0)
        continue
    end
    
    for k=n:1:n1(2)
        if x(i)==p(k)          //проверяем принадлежность матрице простых чисел
            kilkist=kilkist+1
            break
        end
    end
    
        
end

disp(kilkist)

procent=kilkist/N2*100;   //процент простых чисел
disp(string(procent)+"%")

time4=timer();


//--------------------------------------------------------------------
timer()
                       //Контр-примеры

//2 одинаковыe матрицы простых чисел
P=primes(10^2);
Q=P;
//задаем двойной цикл, который перебирает все комбинации из P-Q
for i1=1:(size(P) (1,2))
    for i2=1:(size(Q) (1,2))
        if (modulo(i1,2)~=0) & (modulo(i2,2)~=0)
            //для каждой комбинации вводим проверку заданного условия
            if ~(2^P(1,i1)+1==3*Q(1,i2))
                res1=P(1,i1);
                res2=Q(1,i2);
                disp(res2,'q',res1,'p');
            end
        end
    end
end

time5=timer()

//--------------------------------------------------------------------
timer();

quot1=10^(-9)
quot2=0
Alpha=modulo(%pi,quot1);
for i10=1:(size(UPGPRIMEMATRIX) (1,2))
    if Alpha==UPGPRIMEMATRIX(1,i10); then
        answer=Gamma;
    else
        quot1=10^(-10);
        quot2=1;
        while 1==1
            Alpha=modulo(%pi,quot1);
            Beta=modulo(%pi,quot2);
            Gamma=Alpha-Beta*10^10
            quot1=quot1/10;
            quot2=qiot2/10;
            for i10=1:(size(UPGPRIMEMATRIX) (1,2))
               if Gamma==UPGPRIMEMATRIX(1,i10); then
                    answer=Gamma;
                    break;
               end
           end
       end
    end
end
disp(answer);
time6=timer();


//---------------------------------------------------------
timer();

quot1=10^(-9)
quot2=0
Alpha=modulo(%e,quot1);
for i10=1:(size(UPGPRIMEMATRIX) (1,2))
    if Alpha==UPGPRIMEMATRIX(1,i10); then
        answer=Gamma;
    else
        quot1=10^(-10);
        quot2=1;
        while 1==1
            Alpha=modulo(%e,quot1);
            Beta=modulo(%e,quot2);
            Gamma=Alpha-Beta*10^10
            quot1=quot1/10;
            quot2=qiot2/10;
            for i10=1:(size(UPGPRIMEMATRIX) (1,2))
               if Gamma==UPGPRIMEMATRIX(1,i10); then
                    answer=Gamma;
                    break;
               end
           end
       end
    end
end
disp(answer);
time7=timer();


disp(time7,time6,time5,time4,time3,time2,time1,'amount of time taken on each task is');timer();



