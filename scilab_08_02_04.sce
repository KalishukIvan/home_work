function [x,y,z]=cyl2plain(phi,rho,z)
    if rho<=0 then
        disp('invalid input, positive rho expected')
    else
        x=rho*cos(phi);
        y=rho*sin(phi);
        z=z;
        disp(x,'x=');
        disp(y,'y=');
        disp(z,'z=');
    end
endfunction
