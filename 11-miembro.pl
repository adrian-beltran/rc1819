
% miembro(+Arbol, +X)
% Es cierto si X unifica con alguna de las etiquetas de Arbol

miembro(t(E, _, _), E).

miembro(t(_, I, _), E):- C \= miembro(I, E).
miembro(t(_, _, D), E):- miembro(D, E).

arbol(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil)))).
arbol2(t(9,nil,nil)).