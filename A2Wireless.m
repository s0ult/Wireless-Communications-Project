clc,clear,close all
% Askisi2
f  = 2*10^8; 
c  = 3*10^8;
k0 = 2*pi*f/c;
Z0 = 120*pi;
theta = 0:pi/50:2*pi;
lamda = c/f;

Imax  = 10; 

L = lamda/2;

u = ((Z0*Imax^2) / 8*pi^2)*( ((cos(k0*(L/2)*cos(theta))-cos(k0*(L/2)))./sin(theta)).^2 );
u = u/max(u);

phi   = theta';
    theta_3  = zeros(length(theta));
    phi_3 = zeros(length(phi));
    U_3   = zeros(length(phi));
    
figure(1)
abp(theta,u,30,2)

figure(2);
dbp(theta,u,30,12,2);

L = lamda;

u = ((Z0*Imax^2) / 8*pi^2)*( ((cos(k0*(L/2)*cos(theta))-cos(k0*(L/2)))./sin(theta)).^2 );
u = u/max(u);

figure(3)
abp(theta,u,30,2)

figure(4);
dbp(theta,u,30,12,2);


L = 3*lamda/2;

u = ((Z0*Imax^2) / 8*pi^2)*( ((cos(k0*(L/2)*cos(theta))-cos(k0*(L/2)))./sin(theta)).^2 );
u = u/max(u);

figure(5)
abp(theta,u,30,2)

figure(6);
dbp(theta,u,30,12,2);


L = 2*lamda;

u = ((Z0*Imax^2) / 8*pi^2)*( ((cos(k0*(L/2)*cos(theta))-cos(k0*(L/2)))./sin(theta)).^2 );
u = u/max(u);

figure(7)
abp(theta,u,30,2)

figure(8);
dbp(theta,u,30,12,2);


L = 5*lamda/2;

u = ((Z0*Imax^2) / 8*pi^2)*( ((cos(k0*(L/2)*cos(theta))-cos(k0*(L/2)))./sin(theta)).^2 );
u = u/max(u);

figure(9)
abp(theta,u,30,2)

figure(10);
dbp(theta,u,30,12,2);


L = 3*lamda;

u = ((Z0*Imax^2) / 8*pi^2)*( ((cos(k0*(L/2)*cos(theta))-cos(k0*(L/2)))./sin(theta)).^2 );
u = u/max(u);

figure()
abp(theta,u,30,2)

figure();
dbp(theta,u,30,12,2);
