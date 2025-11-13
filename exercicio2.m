function [blendA, blendB] = exercicio2(NG)

% NG: numero do grupo

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

  % função objetivo: custo total
  f = [10 , (2*NG)];

  % restrições A·x ≤ b (requisitos mínimos convertidos para ≥ → ≤)
  A = [
    -0.30  -0.20 ;   % polietileno
    -0.20  -0.25 ;   % PLA
    -0.25  -0.30 ;   % polipropileno
     1      0    ;   % A <= 20
     0      1    ;   % B <= 50
  ];

  b = [
    -15 ;
    -10 ;
    -12 ;
     20 ;
     50 ;
  ];

  % limites inferiores (não negativo)
  lb = [0 ; 0];
  ub = [];

  % resolução via programação linear
  x = linprog(f, A, b, [], [], lb, ub);


% mantenha essas duas linhas finais
blendA = x(1);
blendB = x(2);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
