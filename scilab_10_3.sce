function b = plane(a,b,c,d)
    u = linspace(-10,10,100)
    v = linspace(-10,10,100)
    deff("[x,y,z]=f(u,v)",["x = a.*u+(-b-c).*v";
              "y = b.*u+a.*v";
              "z = c.*u+a.*v"])
    [Xf, Yf, Zf] = eval3dp(f,u,v)
    plot3d(Xf,Yf,Zf) 
endfunction

function b = planeCan(x0,y0,z0,a,b,c)
    u = linspace(-10,10,100)
    v = linspace(-10,10,100)
    deff("[x,y,z]=f(u,v)",["x = x0+a.*u+(-b-c).*v";
              "y = y0+b.*u+a.*v";
              "z = z0+c.*u+a.*v"])
    [Xf, Yf, Zf] = eval3dp(f,u,v)
    plot3d(Xf,Yf,Zf) 
endfunction

function cut=planeAngle(a1,b1,c1,d,a2,b2,c2)
    l = -b2-c2
    cut = -(abs(d)/d)*asin( (a1*l+b1*a2+c1*a2)/(sqrt(a1*a1+b1*b1+c1*c1)*sqrt(l*l+a2*a2*2)) )
    cut = asin(cut)
endfunction

plane1 = [2,4,-1,3]

plane(plane1(1),plane1(2),plane1(3),plane1(4))
planeCan(2,4,5,-1,3,8)

xtitle('Angle in degrees = '+string(planeAngle(plane1(1),plane1(2),plane1(3),plane1(4),-1,3,8)*57))
