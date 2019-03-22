
% burbuja(+Lista, -R)
% Es cierto si R contiene los elementos de Lista ordenados de menor a mayor
% Lista puede contener elementos repetidos

burbuja(L, L) :- ordenada(L).
burbuja(L, R3) :- append(L1, [E1,E2|L2], L),
		E1 > E2, append(L1, [E2,E1|L2], R2),
		burbuja(R2, R3).

% ordenada(+Lista)
% Es cierto si Lista tiene sus elementos ordenados de menor a mayor

ordenada([]).
ordenada([_]).
ordenada([E1,E2|Resto]) :- E1 =< E2, ordenada([E2|Resto]).
