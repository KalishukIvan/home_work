function [rho,phi,z]=plain2cyl(x,y,z)
    if (x==0)&(y>0) then
        phi=%pi/2;
        rho=abs(y);
    elseif (x==0)&(y<0) then
        phi=3/2*%pi;
        rho=abs(y);
    else
        phi=atan(y/x);
        rho=sqrt(x^2+y^2);
        format(5);
    end
    disp(phi,'phi');
    disp(rho,'rho');
    disp(z,'z=');
endfunction
