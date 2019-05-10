

% num_nodos(+Árbol, -Num)
% Es cierto si Num unifica con con el número de nodos del Árbol

% arbol(A), num_nodos(A,N).

num_nodos(nil, 0).
num_nodos(t(_,I,D), N) :- num_nodos(I, NI), num_nodos(D,ND), N is 1 + NI + ND.

arbol(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil)))).
