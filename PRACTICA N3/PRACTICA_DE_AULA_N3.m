%% PRACTICA DE AULA No 3
% MODULO 3: GRAFICOS EN MATLAB

% LINEA DE INICIALIZACION

clear
close
clc
format short

%%
% Ejercicio 1

% Se crea el vector x dentro del intervalo solicitado.
% La funcion se evalua elemento por elemento usando .^ y .*

x = linspace(-2,4,200);

f = x.^3 - 2*x.^2 - 10*(sin(x)).^2 - exp(0.9*x);

% Derivada calculada manualmente para no usar herramientas simbolicas:
% f'(x) = 3x^2 - 4x - 20sen(x)cos(x) - 0.9e^(0.9x)

df = 3*x.^2 - 4*x - 20*sin(x).*cos(x) - 0.9*exp(0.9*x);

figure(1)
plot(x,f,'-',x,df,'--','LineWidth',1.2)
grid on
xlabel('x')
ylabel('f(x) y f''(x)')
title('Funcion f(x) y su derivada')
legend('f(x)','f''(x)','Location','best')

% Se muestran algunos valores para verificar que los vectores se calcularon.

disp('Ejercicio 1: primeros valores de x, f(x) y f''(x)')
disp([x(1:5)' f(1:5)' df(1:5)'])

%%
% Ejercicio 2

% Se define una malla de puntos para x e y.
% Luego se calcula z en cada punto de la malla.

x = linspace(-5,5,100);
y = linspace(-5,5,100);
[X,Y] = meshgrid(x,y);

Z = -X.^2 + 2*X.*Y + 3*Y.^2;

figure(2)

subplot(1,2,1)
surf(X,Y,Z)
grid on
xlabel('x')
ylabel('y')
zlabel('z')
title('Superficie: z = -x^2 + 2xy + 3y^2')

subplot(1,2,2)
contour(X,Y,Z,20)
grid on
xlabel('x')
ylabel('y')
title('Lineas de contorno')

% Respuesta teorica del ejercicio.

disp('Ejercicio 2:')
disp('En un punto de silla, las lineas de contorno corresponden a hiperbolas.')
disp('Para z = 0 aparecen dos rectas que se cruzan en el origen.')

%%
% Ejercicio 3

% Datos de la ecuacion de Arrhenius.

Q = 1000;       % J/mol
k0 = 10;        % 1/s
R = 8.314;      % J/(mol*K)

% Se crea el vector de temperatura desde 300 K hasta 1000 K.

T = linspace(300,1000,100);

% Se calcula k para cada temperatura.

k = k0*exp(-Q./(R*T));

figure(3)

subplot(2,1,1)
plot(T,k,'LineWidth',1.2)
grid on
xlabel('T (K)')
ylabel('k (1/s)')
title('Constante de reaccion k en funcion de T')

subplot(2,1,2)
plot(1./T,log10(k),'LineWidth',1.2)
grid on
xlabel('1/T (1/K)')
ylabel('log_{10}(k)')
title('log_{10}(k) en funcion de 1/T')

% Se muestran algunos valores de k.

disp('Ejercicio 3: primeros valores de T y k')
disp([T(1:5)' k(1:5)'])

disp('Ejercicio 3: ultimos valores de T y k')
disp([T(end-4:end)' k(end-4:end)'])

%%
% Ejercicio 4

% La placa cuadrada se toma en el intervalo 0 <= x <= 1 y 0 <= y <= 1.

x = linspace(0,1,100);
y = linspace(0,1,100);
[X,Y] = meshgrid(x,y);

Temp = 80*exp(-(X-1).^2).*exp(-3*(Y-1).^2);

figure(4)

subplot(1,2,1)
surf(X,Y,Temp)
grid on
xlabel('x')
ylabel('y')
zlabel('T (°C)')
title('Superficie de temperatura')

subplot(1,2,2)
contour(X,Y,Temp,20)
grid on
xlabel('x')
ylabel('y')
title('Contorno de temperatura')

% Temperatura en la esquina x = 0, y = 0.

T00 = 80*exp(-(0-1)^2)*exp(-3*(0-1)^2);

fprintf('Ejercicio 4: temperatura en x = 0, y = 0: %.4f °C\n',T00)

%%
% Ejercicio 5

% Se crean los vectores de acuerdo con los intervalos dados.

x = linspace(-2*pi,2*pi,120);
y = linspace(-pi,pi,120);
[X,Y] = meshgrid(x,y);

% Se calcula la funcion z usando operaciones elemento a elemento.

Z = -cos(X).*cos(sqrt(X.^2 + Y.^2)).*exp(-abs(0.2*X));

figure(5)
surf(X,Y,Z)
grid on
xlabel('x')
ylabel('y')
zlabel('z')
title('Grafica de superficie 3D con surf')

