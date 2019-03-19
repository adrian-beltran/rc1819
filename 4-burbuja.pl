
% burbuja(+Lista, -R)
% Es cierto si R contiene los elementos de Lista ordenados de menor a mayor
% Lista puede contener elementos repetidos


% ordenada(+Lista)
% Es cierto si Lista tiene sus elementos ordenados de menor a mayor

ordenada([]).
ordenada([_]).
ordenada([E1,E2|Resto]) :- E1 =< E2, ordenada([E2|Resto]).
