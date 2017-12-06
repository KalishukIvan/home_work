a=2;
phi=[-%pi/4:0.01:%pi/4];
rho=sqrt(2*a^2*cos(2*phi));
polarplot(phi,rho);

a=2;
phi1=[-%pi/4:0.01:%pi/4];
rho1=-sqrt(2*a^2*cos(2*phi));
polarplot(phi1,rho1);
