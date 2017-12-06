function [x,y,z]=sphere_to_plain(phi,theta,rho)
    if rho<=0 then
        disp('invalid input, positive rho expected');
    else
        x=rho*sin(theta)*cos(phi);
        y=rho*sin(theta)*sin(phi);
        z=rho*cos(theta);
        disp(x,'x=');
        disp(y,'y=');
        disp(z,'z=');
    end
endfunction
