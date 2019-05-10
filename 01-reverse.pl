
% Reverse(L, R)
% Es cierto si R unifica con una lista que contiene los elementos de L en orden inverso

reverse([],[]).
reverse([Cab|Resto], R) :- reverse(Resto, Resto2), insertar_final(Cab, Resto2, R).


% Insertar_final(E, L, R)
% Es cierto si R unifica con una lista que tiene los elementos de L en el mismo orden con E insertado al final

insertar_final(E, [], [E]).
insertar_final(E, [Ca|Resto], [Ca|R]) :- insertar_final(E, Resto, R).