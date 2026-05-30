%% PRACTICA DOMICILIARIA No 1

% LINEA DE INICIALIZACIÓN

clear
close
clc

%%
% Ejercicio 1

% Primero se define la expresión indicada en el enunciado.

y = 1 + ((3^2 - 4)^2)/(sqrt(2^4 + 9) + 5)*2^3;

%{
Luego se ejecuta el código y se muestra el valor numérico obtenido 
para y
%}

disp('Ejercicio 1: valor de y')
disp(y)

%%
% Ejercicio 2

%{
Se definen los valores de a, b y c, y luego se calcula d según la 
expresión dada
%}

a = 15.62;
b = -7.08;
c = 62.5;

d = 0.5*(a*b - c);

% Con las variables ya definidas, se plantea la operación completa.

Resultado = d*exp(d/2) + ((a*d + c*d)/(20/a + 30/b))/(a + b + c + d);

% Finalmente, se muestra el resultado numérico de la operación.

disp('Ejercicio 2: resultado de la operación')
disp(Resultado)

%%
%  Ejercicio 3

% Se crea un vector con los valores de x solicitados.

x = [1 2 3 4 5];

% Se define la función.

f = x.^4 - 8*x.^3 + 17*x.^2 - 4*x - 20;

%{
Al ejecutar el código, MATLAB entrega un vector con los resultados
de la función para cada valor de x 
%}

disp('Ejercicio 3: valores de f(x)')
disp(f)

%% 
% Ejercicio 4

% Se declaran x e y como variables simbólicas mediante el comando syms.

syms x y

%{
Luego se aplica el comando simplify para reducir la expresión 
trigonométrica a una forma más simple.
%}

R = simplify(sin(x)*cos(y) + cos(x)*sin(y));

% Finalmente, se muestra la expresión simplificada obtenida por MATLAB.

disp('Ejercicio 4: expresión simplificada')
disp(R)

%% 
% Ejercicio 5

%{ 
Se definen dos polinomios simbólicos. Después, se forma el producto 
de ambos polinomios para obtener la expresión P que será derivada.
%}

syms x

p1 = 5*x + 2;
p2 = 10*x^2 + 4*x - 3;

P = p1*p2;

%{ 
Se utiliza el comando diff para calcular la derivada de P con respecto 
a la variable x.
%}

Resultado = diff(P, x);

% Por último, se muestra la derivada obtenida.

disp('Ejercicio 5: derivada de P')
disp(Resultado)

%% 
% Ejercicio 6

% Se define el valor de a

a = 0.5;

% Se definen los limites de integración

c = pi/9;       % limite inferior
d = 3*pi/5;     % limite superior

% Se define la primitiva dada por el problema

F = @(x) x/2 + sin(2*a*x)/(4*a);

% Se calcula la integral definida evaluando F(d) - F(c)

I = F(d) - F(c);

% Se muestra el resultado

disp('Ejercicio 6: valor de la integral definida')
disp(I)
%% PRACTICA DOMICILIARIA No 1 - AVANZADO
% LINEA DE INICIALIZACIÓN

%%
% EJERCICIO 1
% Primero definimos los valores dados en el problema.

x = 9;
a = 1;
b = 3;
c = 5;
 
% Definimos la expresion que se repite en la formula:

A = a*x^2 + b*x + c;

% Ahora definimos la funcion f

f = (log(A) - sin(A)) / (4*pi*x^2 + cos(x - 2)*A);

% Finalmente ejecutamos y mostramos el resultado:

disp('EJERCICIO 1')
disp('Valor de f:')
disp(f)
%% 
% EJERCICIO 2
% Como se trabaja con variables algebraicas, usamos syms.

syms x y

% Definimos la expresion original:

E = (x - y)*(x - y)^2;

% Operamos:

E_operada = simplify(E);

% Expandimos la expresion usando expand:

E_expandida = expand(E);

% Factorizamos la expresion usando factor:

E_factorizada = factor(E_expandida);

% Mostramos los resultados

disp(' ')
disp('EJERCICIO 2')
disp('Expresion original:')
disp(E)

disp('Expresion operada:')
disp(E_operada)

disp('Expresion expandida:')
disp(E_expandida)

disp('Expresion factorizada:')
disp(E_factorizada)
%% 
% EJERCICIO 3
% Creamos una funcion anonima para calcular combinaciones:

C = @(n,r) factorial(n)/(factorial(r)*factorial(n-r));

% a) Determinar cuantas combinaciones son posibles

combinaciones = C(49,6);

% b) Determinar la probabilidad de adivinar 2 de los 6 numeros.

probabilidad = (C(6,2)*C(43,4))/C(49,6);

% Mostramos los resultados:

disp(' ')
disp('EJERCICIO 3')
disp('a) Numero de combinaciones posibles:')
disp(combinaciones)

disp('b) Probabilidad de adivinar 2 de los 6 numeros:')
disp(probabilidad)
%% 
% EJERCICIO 4
% Como es una integral simbolica, usamos syms e int.

syms x y

% Primero resolvemos la integral interna respecto de y:

I_interna = int(x^2 + y^2, y, 0, sin(x));

% Luego integramos el resultado respecto de x:

I_total = int(I_interna, x, 0, pi);

% Simplificamos el resultado:

I_simplificada = simplify(I_total);

% Tambien obtenemos el resultado decimal:

I_decimal = double(I_simplificada);

% Mostramos los resultados:

disp('EJERCICIO 4')
disp('Integral interna:')
disp(I_interna)

disp('Resultado exacto:')
disp(I_simplificada)

disp('Resultado decimal:')
disp(I_decimal)
%% 
% EJERCICIO 5

% Datos:
% Temperatura normal del cuerpo: 98.6 F
% Temperatura ambiente: 69 F
% Temperatura a las 9:18 PM: 79.5 F
% Temperatura una hora despues: 78.0 F

Ts = 69;
T0 = 98.6;
T1 = 79.5;
T2 = 78.0;

% Calculamos la constante de enfriamiento k.
% Como entre T1 y T2 pasa una hora:
% (T2 - Ts)/(T1 - Ts) = exp(-k)

k = -log((T2 - Ts)/(T1 - Ts));

% Ahora calculamos el tiempo transcurrido desde la muerte
% hasta las 9:18 PM.
%
% T1 = Ts + (T0 - Ts)*exp(-k*t)
% Despejando:
% t = -log((T1 - Ts)/(T0 - Ts))/k

t = -log((T1 - Ts)/(T0 - Ts))/k;

% Convertimos el tiempo decimal a horas, minutos y segundos:

horas = floor(t);
minutos = floor((t - horas)*60);
segundos = round((((t - horas)*60) - minutos)*60);

% La hora de llegada fue 9:18 PM, que en formato 24 horas es 21:18.
% Convertimos esa hora a minutos:

hora_llegada_min = 21*60 + 18;

% Restamos el tiempo transcurrido desde la muerte:

hora_muerte_min = hora_llegada_min - t*60;

% Convertimos nuevamente a horas, minutos y segundos:

hora_muerte_h = floor(hora_muerte_min/60);
hora_muerte_m = floor(mod(hora_muerte_min,60));
hora_muerte_s = round((hora_muerte_min - floor(hora_muerte_min))*60);

% Mostramos los resultados:

disp('EJERCICIO 5')

disp('Constante de enfriamiento k:')
disp(k)

fprintf(['Tiempo transcurrido desde la muerte hasta las 9:18 PM:' ...
         '%d horas, %d minutos y %d segundos\n'], horas, minutos, segundos)

fprintf('Hora aproximada de muerte: %02d:%02d:%02d en formato 24 horas\n', ...
         hora_muerte_h, hora_muerte_m, hora_muerte_s)

disp('Equivale aproximadamente a 2:34 PM')

