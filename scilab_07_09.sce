function x=random_my(k)  //генератор k псевдослучайных чисел
    format(25)           
    x=[]
    time=getdate()
    n=217728 //числа с википедии
    a=84589
    b=45989 //х0-начальное число, зависит от настоящего времени
    x0=time(1)+time(2)*time(3)+time(4)+time(5)*time(6)+time(7)+time(8)*time(9)+time(10)
    x0=modulo(x0,n)
    x=a*x0+b //первое число по формуле линейного конгруентного метода
    x=modulo(x,n)
    i=2
    
    while i<=k         //повтор операции k раз
        x0=a*x(i-1)+b
        x0=modulo(x0,n)
        x=[x,x0]
        i=i+1
        
    end
    
    //побудова графіка(вместо процентного вывода)
    plot(x)   
endfunction