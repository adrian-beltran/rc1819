
% Aritmética de Peano
% 0 - 0, 1 - n(0), 2 - n(n(0))... 

% suma(?X, ?Y, ?Z)
% Es cierto si Z unifica con la suma de X e Y
% en aritmética de Peano

suma(0, Y, Y).
suma(n(X), Y, n(Z)) :- suma(X, Y, Z).

%  Por ejemplo: suma(X, Y, n(n(n(0)))).

% resta(?X, ?Y, ?Z)
% Es cierto si Z unifica con la resta X - Y
% en aritmética de Peano

resta(X, 0, X).
resta(X, n(Y), Z) :- resta(X, Y, n(Z)).

% producto(?X, ?Y, ?Z)
% Es cierto si Z unifica con el producto de X e Y
% en aritmética de Peano
producto(0, _, 0).
producto(n(X), Y, A) :- producto(X, Y, Z), suma(Y, Z, A).