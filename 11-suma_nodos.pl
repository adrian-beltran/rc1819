% suma_nodos(+Arbol, -N)
% Cierto si N unifica con la suma de todos los elementos de Arbol

suma_nodos(nil, 0).
suma_nodos(t(E,I,D), N) :- suma_nodos(I, NI), suma_nodos(D,ND), N is E + NI + ND.

arbol(t(1,t(2,t(2,nil,nil),t(2,nil,nil)),t(1,t(1,nil,nil),t(1,nil,nil)))).