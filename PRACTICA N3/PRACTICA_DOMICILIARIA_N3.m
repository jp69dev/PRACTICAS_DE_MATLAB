%% PRACTICA DOMICILIARIA No 3
% MODULO 3: GRAFICOS EN MATLAB

% LINEA DE INICIALIZACION

clear
close all
clc
format short

%%
% Ejercicio 1

% Se hacen dos graficas separadas para la funcion indicada.
% La expresion sin(x.^2) representa sin(x^2), tal como aparece en el enunciado.

x1 = linspace(-4,3,200);
f1 = -3*x1.^4 + 10*sin(x1.^2) - exp(-0.2*x1);

figure(1)
plot(x1,f1,'-')
xlabel('x')
ylabel('f(x)')
title('Ejercicio 1: f(x), -4 <= x <= 3')
grid on

x2 = linspace(-4,4,200);
f2 = -3*x2.^4 + 10*sin(x2.^2) - exp(-0.2*x2);

figure(2)
plot(x2,f2,'-')
xlabel('x')
ylabel('f(x)')
title('Ejercicio 1: f(x), -4 <= x <= 4')
grid on

%%
% Ejercicio 2

% Se obtiene la superficie y el contorno de:
% z = x^2 - 2xy + 4y^2
% Esta funcion tiene un minimo en x = 0, y = 0, donde z = 0.

x = linspace(-5,5,80);
y = linspace(-5,5,80);
[X,Y] = meshgrid(x,y);
Z = X.^2 - 2*X.*Y + 4*Y.^2;

figure(3)
subplot(1,2,1)
surf(X,Y,Z)
hold on
plot3(0,0,0,'ro','MarkerFaceColor','r')
hold off
xlabel('Eje x')
ylabel('Eje y')
zlabel('Eje z')
title('Superficie: z = x^2 - 2xy + 4y^2')
grid on

subplot(1,2,2)
contour(X,Y,Z,20)
hold on
plot(0,0,'ro','MarkerFaceColor','r')
hold off
xlabel('Eje x')
ylabel('Eje y')
title('Contorno de la superficie')
grid on

% Se muestra el valor minimo en la ventana de comandos.

z_min = 0^2 - 2*0*0 + 4*0^2;

disp('Ejercicio 2: minimo de la funcion')
disp('El minimo ocurre en x = 0, y = 0')
disp('Valor de z en el minimo:')
disp(z_min)

%%
% Ejercicio 3

% Se calcula el crecimiento del saldo con interes compuesto continuamente:
% P = P0*exp(r*t)

P0 = 1000;
r = 0.08;
t = 1:30;

P = P0*exp(r*t);

% Se elabora una tabla numerica usando una matriz de dos columnas.
% Primera columna: tiempo en anios
% Segunda columna: saldo actual

Tabla = [t' P'];

disp('Ejercicio 3: tabla de saldo al final de cada anio')
disp('     Anio        Saldo')
disp(Tabla)

% Se crean cuatro subgraficas en una sola ventana.
% Se ubican segun cuadrantes cartesianos:
% I arriba derecha, II arriba izquierda, III abajo izquierda, IV abajo derecha.

figure(4)

subplot(2,2,2)
plot(t,P,'-')
xlabel('Tiempo, t (anios)')
ylabel('Saldo actual, P ($)')
title('I cuadrante: escala rectangular')
grid on

subplot(2,2,1)
semilogx(t,P,'-')
xlabel('Tiempo, t (anios)')
ylabel('Saldo actual, P ($)')
title('II cuadrante: escala logaritmica en x')
grid on

subplot(2,2,3)
semilogy(t,P,'-')
xlabel('Tiempo, t (anios)')
ylabel('Saldo actual, P ($)')
title('III cuadrante: escala logaritmica en y')
grid on

subplot(2,2,4)
loglog(t,P,'-')
xlabel('Tiempo, t (anios)')
ylabel('Saldo actual, P ($)')
title('IV cuadrante: escala logaritmica en x e y')
grid on

%%
% Ejercicio 4

% Se analiza la funcion de oscilacion amortiguada:
% z(t) = exp(-t/tau)*sin(2*t)
% Variable x: tiempo t
% Variable y: tau

t = linspace(0,15,150);
tau = linspace(0.5,10,150);
[T,TAU] = meshgrid(t,tau);

Z = exp(-T./TAU).*sin(2*T);

figure(5)
subplot(1,2,1)
surf(T,TAU,Z)
xlabel('Tiempo, t (s)')
ylabel('Constante de tiempo, tau (s)')
zlabel('z(t)')
title('Superficie de oscilacion amortiguada')
grid on

subplot(1,2,2)
contour(T,TAU,Z,20)
xlabel('Tiempo, t (s)')
ylabel('Constante de tiempo, tau (s)')
title('Contorno de oscilacion amortiguada')
grid on

%%
% Ejercicio 5

% Se construye una grafica de superficie 3D con mesh para:
% z = -cos(2R)/exp(0.2R), donde R = sqrt(x^2 + y^2)

x = linspace(-5,5,100);
y = linspace(-5,5,100);
[X,Y] = meshgrid(x,y);

R = sqrt(X.^2 + Y.^2);
Z = -cos(2*R)./exp(0.2*R);

figure(6)
mesh(X,Y,Z)
xlabel('Eje x')
ylabel('Eje y')
zlabel('Eje z')
title('Ejercicio 5: grafica mesh de z = -cos(2R)/e^{0.2R}')
grid on
