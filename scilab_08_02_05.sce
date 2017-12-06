function [phi,theha,rho]=plain2sphere(x,y,z)
    if x==y==z==0 then
        disp('such point cannot be defined in polar coordinates');
    elseif (x==0)&&(y>0) then
        phi=%pi/2;
        rho=sqrt(x^2+y^2+z^2);
        theta=acos(z/rho);
    elseif (x==0)&&(y<0) then
        phi=3/2*%pi;
        rho=sqrt(x^2+y^2+z^2);
        theta=acos(z/rho);
    else
        phi=atan(y/x);
        rho=sqrt(x^2+y^2+z^2);
        theta=acos(z/rho);
    end
    format(7);
    disp(phi,'phi=');
    disp(rho,'rho=');
    disp(theta,'theta=');
endfunction
