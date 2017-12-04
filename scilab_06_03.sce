function par_equation(s)
x=strindex(s,"x") //поиск символа х в строке
if size(x)>0 then
    a=part(s,[1:x-1]) //если х есть то виризается число до х и присваивается переменной
    a=evstr(a) //строка в число
else
    a=0 //если х в уравнении нет то переменной присваивается 0
    x=0
end

y=strindex(s,"y") 

if size(y)>0 then
    b=part(s,[x+1:y-1]) //тоже самое для у
    b=evstr(b)
    
else
    b=0
end

z=strindex(s,"=")


c=part(s,[z+1:length(s)]) //C находится посляе = поэтому он есть всегда
c=evstr(c)

x0=1
if b==0 then   //если уравнение вида ах=с
    x0=c/a     
    y0=0
end
if a==0 then  //если уравнение вида by=c
        y0=c/b
        x0=0
       
    else        
        y0=(-a+c)/b  //если уравнение вида ax+by=c
    
end


if -b>=0 then   //если коеф при у>0 то перед его выведением в формулу необходимо поставить "+"
    disp("x="+string(x0)+"+"+string(-b)+"t")
else
    disp("x="+string(x0)+string(-b)+"t")
end

if a>=0 then
    disp("y="+string(y0)+"+"+string(a)+"t") //тоже самое для а
else
    disp("y="+string(y0)+string(a)+"t")
end
endfunction
