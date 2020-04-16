clc,clear,close all
%% Askisi3

z=-30*pi:pi:30*pi; x=z; y=z;
[X,Y,Z] = meshgrid(x,y,z);

E_abs = 10^(-5);
H_abs = -0.0265;

Ex = E_abs.*exp(-1j*2.09*Z);
Ey = 0*Ex; Ez = 0*Ex; 
Hy = H_abs.*exp(-1j*2.09*Z);

Eplot = 0*z; Hplot = 0*z;

for ii = 1:length(z)
    Eplot(ii) = Ex(1,1,ii);
    Hplot(ii) = Hy(1,1,ii);
end

axis_z = linspace(-33*pi, 33*pi, 2);

d_phi = 0;
dir = '+';

figure();
plot3(Eplot, y*0, z, 'b*-','linewidth',1), hold on
plot3(x*0, Hplot, z, 'r*-','linewidth',1), hold on
plot3(0*axis_z, 0*axis_z, axis_z, 'k')
grid on , view(-60,20)
legend('Ex', 'Hy', 'z');

