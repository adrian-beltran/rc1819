
% Aritmética de Peano
% 0 - 0, 1 - n(0), 2 - n(n(0))... 

% --- suma(?X, ?Y, ?Z) ---
% Es cierto si Z unifica con la suma de X e Y
% en aritmética de Peano

suma(0, Y, Y).
suma(n(X), Y, n(Z)) :- suma(X, Y, Z).

%  Por ejemplo: suma(X, Y, n(n(n(0)))).

% --- resta(?X, ?Y, ?Z) ---
% Es cierto si Z unifica con la resta X - Y
% en aritmética de Peano

resta(X, 0, X).
resta(X, n(Y), Z) :- resta(X, Y, n(Z)).

% --- producto(?X, ?Y, ?Z) ---
% Es cierto si Z unifica con el producto de X e Y
% en aritmética de Peano

producto(0, _, 0).
producto(n(X), Y, A) :- producto(X, Y, Z), suma(Y, Z, A).

% p2d(+P, -D)
% Es cierto si D unifica con el número decimal equvalente a 
% su representación en aritmética de Peano

p2d(0, 0).
p2d(n(X), R) :- nonvar(X), p2d(X, D), R is D + 1.

% d2p(+D, -P)
% Es cierto si P unifica con el número de Peano equvalente a 
% su representación decimal

d2p(0, 0).
d2p(X, n(P)) :- X >= 1, X2 is X - 1, d2p(X2, P).

% --- division(?X, ?Y, ?Z) ---
% es cierto si Z es el resultado de la división entera de X entre Y

division(X, Y, 0) :- menor(X, Y).
division(X, Y, n(Z)) :- resta(X, Y, R), division(R, Y, Z).
%division(X, Y, Z) :- producto(Y, Z, X).

% menor(?X, ?Y)
% es cierto si X es menor estricto que Y

menor(0, n(X)) :- peano(X).
menor(n(X), n(Y)) :- menor(X, Y).

% peano(X)
% es cierto si X es un número válido en representación de Peano

peano(0).
peano(n(X)) :- peano(X).

% --- modulo(?X, ?Y, ?Z) ---
% es cierto si Z unificia con el resto de la division entera entre X e Y

modulo(X, Y, X) :- menor(X, Y).
modulo(X, Y, Z) :- resta(X, Y, X2), modulo(X2, Y, Z).


% division(X, Y, n(n(n(n(n(0)))))), p2d(X, X2), p2d(Y, Y2).
% d2p(2, Z), modulo(X, Y, Z), p2d(X, X1), p2d(Y, Y1).


% (Entera, Decimal)
% representa un número real en aritmética de Peano, siendo
% Entera y Decimal dos números válidos en AP



