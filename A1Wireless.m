clc,clear,close all
%% Askisi 1_1
N           = 5;
t           = -2*pi:0.2:2*pi;
[x, y]      = meshgrid(t);
f1          = ((sin(x)).^3) + ((cos(y)).^3);
f2          = 0;

for ii=1:N
    f2 = f2 + (2*ii);
end

f2       = 1/f2;
f        = f1 .* f2;
[px, py] = gradient(f,0.2,0.2);

figure('Name','Askisi1_1, f(x,y)','NumberTitle','off');
mesh(x,y,f, 'LineWidth', 0.1);

figure('Name','Askisi1_1, Grad of f','NumberTitle','off');
contour(x,y,f), hold on;
quiver(x,y,px,py);
axis equal;


%% Askisi1_2
x=-1:0.1:1; y=x; z=x;
[X,Y,Z]    = meshgrid(x,y,z);
Ux         = ((X+Y).^2) ./ (X.^2+Y.^2+Z.^2);
Uy         = ((Y+Z).^2) ./ (X.^2+Y.^2+Z.^2);
Uz         = ((Z+X).^2) ./ (X.^2+Y.^2+Z.^2);
U          = Ux + Uy + Uz;
[Vx,Vy,Vz] = curl(X,Y,Z,Ux,Uy,Uz);

figure('Name', 'Askisi1_2, Curl of U', 'NumberTitle', 'off');
quiver3(X,Y,Z,Vx,Vy,Vz);

figure('Name', 'Askisi1_2, U(x,y,z)', 'NumberTitle', 'off');
p = patch(isosurface(X,Y,Z,U));
set(p,'FaceColor','blue','EdgeColor','none');
view(3); % 3D default view
daspect([1,1,1]) 
grid on
axis([-1,1,-1,1,-1,1]), box on
camlight, lighting phong
xlabel('x'),ylabel('y'),zlabel('z')


