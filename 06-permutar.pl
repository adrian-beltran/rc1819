
% permuta(Lista, ListaR)
% es cierto cuando ListaR unifica con una lista que contiene 
% los elementos deLista en orden distinto.
% Este predicado genera todas las listas posibles

permuta([], []).
permuta([Cab|Resto], L) :-
	permuta(Resto, R), insertar_todas(Cab, R, L).

% insertar_todas(+E, +L, -R)
% es cierto si R unifica con una lista que contiene los elementos
% de Lista con E insertado en cualquier posición

insertar_todas(E, [], [E]).
insertar_todas(E, [Cab|Resto], [E, Cab|Resto]).
insertar_todas(E, [Cab|Resto], [Cab|R]) :-
	insertar_todas(E, Resto, R).
	
