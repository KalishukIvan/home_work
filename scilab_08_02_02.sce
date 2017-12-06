function [x,y]=polar2plain(phi,rho)
    if rho<=0 then
        disp('invalid input, positive rho expected');
    else
        x=rho*cos(phi);
        y=rho*sin(phi);
        format(5);
        disp(x,'x=');
        disp(y,'y=');
    end
endfunction
