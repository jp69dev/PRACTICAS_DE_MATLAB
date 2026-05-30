%% PRACTICA DOMICILIARIA No 2
% MODULO 2: VECTORES Y MATRICES

% LINEA DE INICIALIZACION

clear
close
clc
format short

%%
% Ejercicio 1

% Primero se crea el vector fila con los elementos solicitados.
% Se usa 110^(1/3) para representar la raiz cubica de 110.
% El termino cos(25) se trabaja en radianes, tal como MATLAB lo interpreta.

v1 = [3 4*2.55 68/16 45 110^(1/3) cos(25) 0.05];

disp('Ejercicio 1: vector fila')
disp(v1)

%%
% Ejercicio 2

% En el enunciado aparece y = -6.4, pero en los elementos se usa b.
% Por coherencia con a/b y a*b, se define b = -6.4.

a = 3.5;
b = -6.4;

v2 = [a; a^2; a/b; a*b; sqrt(a)];

disp('Ejercicio 2: vector columna')
disp(v2)

%%
% Ejercicio 3

A = [ 3   7  -4  12;
     -5   9  10   2;
      6  13   8  11;
     15   5   4   1];

% a) Segunda columna de A
v = A(:,2);

% b) Segunda fila de A
w = A(2,:);

disp('Ejercicio 3: matriz A')
disp(A)

disp('Ejercicio 3a: vector v, segunda columna de A')
disp(v)

disp('Ejercicio 3b: vector w, segunda fila de A')
disp(w)

%%
% Ejercicio 4

A = [-7 11;
      4  9];

B = [ 4 -5;
     12 -2];

C = [-3 -9;
      7  8];

% a) Calcule A + B + C
Resultado_a = A + B + C;

% b) Calcule A - B + C
Resultado_b = A - B + C;

% c) Verifique la ley asociativa:
%    (A + B) + C = A + (B + C)

Lado_izquierdo_c = (A + B) + C;
Lado_derecho_c = A + (B + C);
Diferencia_c = Lado_izquierdo_c - Lado_derecho_c;

% d) Verifique la ley conmutativa:
%    A + B + C = B + C + A = A + C + B

Primer_orden_d = A + B + C;
Segundo_orden_d = B + C + A;
Tercer_orden_d = A + C + B;

Diferencia_d1 = Primer_orden_d - Segundo_orden_d;
Diferencia_d2 = Primer_orden_d - Tercer_orden_d;

disp('Ejercicio 4a: A + B + C')
disp(Resultado_a)

disp('Ejercicio 4b: A - B + C')
disp(Resultado_b)

disp('Ejercicio 4c: lado izquierdo (A+B)+C')
disp(Lado_izquierdo_c)

disp('Ejercicio 4c: lado derecho A+(B+C)')
disp(Lado_derecho_c)

disp('Ejercicio 4c: diferencia entre ambos lados')
disp(Diferencia_c)

disp('Ejercicio 4d: A+B+C')
disp(Primer_orden_d)

disp('Ejercicio 4d: B+C+A')
disp(Segundo_orden_d)

disp('Ejercicio 4d: A+C+B')
disp(Tercer_orden_d)

disp('Ejercicio 4d: diferencia entre A+B+C y B+C+A')
disp(Diferencia_d1)

disp('Ejercicio 4d: diferencia entre A+B+C y A+C+B')
disp(Diferencia_d2)

%%
% Ejercicio 5

% Se crean las matrices usando bloques con zeros, ones y eye.
% Cada matriz se escribe en un solo comando.

M_a = [eye(2) ones(2) zeros(2,1)];

M_b = [ones(2,4); eye(2) zeros(2)];

M_c = [zeros(2,1) ones(2,3) zeros(2,1); zeros(2,4) ones(2,1)];

disp('Ejercicio 5a: matriz creada con eye, ones y zeros')
disp(M_a)

disp('Ejercicio 5b: matriz creada con ones, eye y zeros')
disp(M_b)

disp('Ejercicio 5c: matriz creada con zeros y ones')
disp(M_c)