%% PRACTICA DE AULA No 2
% MODULO 2: VECTORES Y MATRICES

clear
close all
clc
format short

%%
% Ejercicio 1

v1 = [32 4 81 exp(2.5) cos(pi/3) 14.12];

disp('Ejercicio 1: vector fila')
disp(v1)

%%
% Ejercicio 2

x = 0.85;
y = 12.5;

v2 = [y; y^x; log(y/x); x*y; x + y];

disp('Ejercicio 2: vector columna')
disp(v2)

%%
% Ejercicio 3

A = [ 3   7  -4  12;
     -5   9  10   2;
      6  13   8  11;
     15   5   4   1];

B = A(:,2:4);
C = A(2:4,:);
D = A(1:2,2:4);

disp('Ejercicio 3: matriz A')
disp(A)

disp('Ejercicio 3a: matriz B')
disp(B)

disp('Ejercicio 3b: matriz C')
disp(C)

disp('Ejercicio 3c: matriz D')
disp(D)

%%
% Ejercicio 4

A = [4 -2 1;
     6  8 -5;
     7  9 10];

B = [ 6 9 -4;
      7 5  3;
     -8 2  1];

C = [-4 -5 2;
     10  6 1;
      3 -9 8];

% a) Verificacion de A*(B+C) = A*B + A*C

Lado_izquierdo_a = A*(B + C);
Lado_derecho_a = A*B + A*C;
Diferencia_a = Lado_izquierdo_a - Lado_derecho_a;

disp('Ejercicio 4a: lado izquierdo A*(B+C)')
disp(Lado_izquierdo_a)

disp('Ejercicio 4a: lado derecho A*B + A*C')
disp(Lado_derecho_a)

disp('Ejercicio 4a: diferencia entre ambos lados')
disp(Diferencia_a)

% b) Verificacion de (A*B)*C = A*(B*C)

Lado_izquierdo_b = (A*B)*C;
Lado_derecho_b = A*(B*C);
Diferencia_b = Lado_izquierdo_b - Lado_derecho_b;

disp('Ejercicio 4b: lado izquierdo (A*B)*C')
disp(Lado_izquierdo_b)

disp('Ejercicio 4b: lado derecho A*(B*C)')
disp(Lado_derecho_b)

disp('Ejercicio 4b: diferencia entre ambos lados')
disp(Diferencia_b)

%%
% Ejercicio 5

M_a = [ones(2) zeros(2)];

M_b = [eye(2) zeros(2) ones(2)];

M_c = [ones(1,4); zeros(2,4)];

disp('Ejercicio 5a: matriz creada con ones y zeros')
disp(M_a)

disp('Ejercicio 5b: matriz creada con eye, zeros y ones')
disp(M_b)

disp('Ejercicio 5c: matriz creada con ones y zeros')
disp(M_c)