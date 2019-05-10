
% miembro(+Arbol, +X)
% Es cierto si X unifica con alguna de las etiquetas de Arbol

miembro(t(E, _, _), E).
miembro(t(E, I, D), El) :- E \= El, I \= nil, D \= nil, miembro(I, El), miembro(D, El).

%miembro(t(E,nil,D), El) :- E \= El, D \= nil, miembro(D, El).
%miembro(t(E,I,nil), El) :- E \= El, I \= nil, miembro(I, El).

arbol(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil)))).
arbol2(t(9,nil,nil)).