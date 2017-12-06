//четыре пустые матрицы с комплексными числами
a_mtrx=[];
b_mtrx=[];
c_mtrx=[];
d_mtrx=[];

clf();
//двойным циклом перебираем все х,у, тут это Im и Re части числа
for x=-5:0.1:5
    for y=-5:0.1:5
        //комплексное число
        a=x+y*%i;
        //обратное
        b=1/a;
        //квадрат
        c=a^2;
        //отношение сумм разностей с единицей
        d=(1+a)/(1-a);
        //добавляем в соответствующую вектор-матрицу
        a_mtrx=[a_mtrx,a];
        b_mtrx=[b_mtrx,b];
        c_mtrx=[c_mtrx,c];
        d_mtrx=[d_mtrx,d];
    end
end
//каждый график для удобства отделяем с помощью scf
scf(0);
//за аргумент берем Re часть, за значение - Im
plot(real(a_mtrx),imag(a_mtrx),'+green');
scf(1);
plot(real(b_mtrx),imag(b_mtrx),'+red');
scf(2);
plot(real(c_mtrx),imag(c_mtrx),'+blue');
scf(3)
plot(real(d_mtrx),imag(d_mtrx),'+black');
