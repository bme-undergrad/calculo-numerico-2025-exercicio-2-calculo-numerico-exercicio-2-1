function [blendA, blendB] = exercicio2(NG)

% NG: numero do grupo

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

p = NG;

## f(x) = 10(x1) + (2*NG)(x2)
f = [10; 2*p];

## Ax<=b
## Por se tratar de uma inequação de maior os valores têm que estar negativos
A = [-0.30, -0.2;
-0.20, -0.25;
-0.25, -0.30];

b = [-15; -10; -12];

## Aeq*x = beq
## Como não há igualdade no problema Aeq e beq são vazios
Aeq = [];
beq = [];

## mínimos e máximos da função
valores_minimos = [0; 0];
valores_maximo = [20; 50];

x = linprog(f, A, b, Aeq, beq, lb=valores_minimos, ub=valores_maximo);
% mantenha essas duas linhas finais
blendA = x(1);
blendB = x(2);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
