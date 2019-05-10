
% insercion(+Lista, -R).
% Es cierto si R contiene los elementos de Lista ordenados de menor a mayor
% Lista puede contener elementos repetidos

insercion([],[]).
insercion([Ca|Resto], R2) :- insercion(Resto, R),
	insertar_ord(Ca, R, R2).

% insertar_ord(+E, +L, -R).
% es cierto cuando R unifica con un lista que contiene los elementos de L con
% E insertado en su posición correcta.
% L puede tener elementos repetidos y está ordenada de menor a mayor

insertar_ord(E, [], [E]).
insertar_ord(E, [Ca|R], [E,Ca|R]) :- E =< Ca.
insertar_ord(E, [Ca|R], [Ca|R2]) :- E > Ca, insertar_ord(E, R, R2).