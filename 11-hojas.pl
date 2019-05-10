
% hojas(+Arbol, -Lista)
% Es cierto si Lista unifica con las etiquetas de las hojas de Arbol

hojas(nil, []).
hojas(t(A, nil, nil), [A]).
hojas(t(_, I, D), L) :- I \= nil, D \= nil, hojas(I, LI), hojas(D, LD), append([LI,LD], L).

hojas(t(_,nil,D), L) :- hojas(D, L), D \= nil.
hojas(t(_,I,nil), L) :- hojas(I, L), I \= nil.

arbol(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil)))).