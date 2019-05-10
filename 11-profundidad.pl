
% profundidad(+Arbol, -P)
% Cierto si P unifica con la profundidad del Arbol
% (Para la profundidad no se tiene en cuenta la raiz)

profundidad(nil, 0).
profundidad(t(_,nil,nil), 0).
profundidad(t(_,I,D), P) :- I \= nil, profundidad(I, PI), profundidad(D, PD), PI > PD, P is PI + 1.
profundidad(t(_,I,D), P) :- D \= nil, profundidad(I, PI), profundidad(D, PD), PI =< PD, P is PD + 1.

arbol(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil)))).
arbol2(t(9,nil,t(1,nil,(t(2,nil,t(6,nil,t(3,nil,t(14,nil,nil)))))))).