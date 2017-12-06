//матрицы с задаными параметрами
xstep = [0.1,0.2,0.2,0.1,0.15]
ystep = [0.1,0.2,0.2,0.1,0.2]
deg = [2,3,2,3,2]
n = [2,2,3,5,3]

//список разных цветов
color1 = ['red','blue','yellow','green','black']

for i = 1:5 //перебор
    x = -10
    y = -10
    z=[]
    while x <= 10 //перебор точек в (-10,10)
        while y <= 10
            r = int(abs(x+y*%i)^deg(i)) //если формула true то добавляем точку в матрицу
            if  modulo(r,n(i)) == 0 then
                z = [z,(x+y*%i)]
            end
            y = y + ystep(i) //увеличиваем у на ystep
        end
        x = x + xstep(i) //увеличиваем х на хstep
        y = -10
    end
    
    scf(i) //открытие і-го окна 
    clf(i)
    plot(real(z),imag(z),'+'+color1(i))   //построение графика
end
