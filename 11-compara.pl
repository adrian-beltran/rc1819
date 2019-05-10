
% iguales(+A1, +A2)
% Cierto si A1 y A2 son iguales
% Comprobar que sea un árbol no es estrictamente necesario, pero no sobra
iguales(A, A) :- esarbol(A).

esarbol(nil).
esarbol(t(_,I,D)) :- esarbol(I), esarbol(D).

% simetricos(+A1, +A2)
% Cierto si A1 y A2 son árboles simétricos

simetricos(nil,nil).
simetricos(t(E,I,D),t(E,I2,D2)) :- simetricos(I,D2), simetricos(D,I2).

% isomorfo(+A1, +A2)
% Es cierto si A1 y A2 tienen la mismo forma, aunque no tengan los mismos elementos

isomorfo(nil, nil).
isomorfo(t(_,I,D),t(_,I2,D2)) :- isomorfo(I,I2), isomorfo(D,D2).

% t(10,t(8,nil,nil),t(6,nil,nil))
% t(10,t(6,nil,nil),t(8,nil,nil))
arbol(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil)))).

arbolIso(t(4,t(6,t(7,nil,nil),t(1,nil,nil)),t(2,t(1,nil,nil),t(4,nil,nil)))).
arbolNIso(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(2,nil,nil))).

arbolInv(t(9,t(12,t(14,nil,nil),t(10,nil,nil)),t(5,t(6,nil,nil),t(4,nil,nil)))).