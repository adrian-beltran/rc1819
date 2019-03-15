% elemento_enesimo(+Pos, +Lista, -Elem)
% Es cierto cuando Elem unifica con el elemento que ocupa la posición Pos de la Lista

elemento_enesimo(1, [Cab|_], Cab).
elemento_enesimo(N, [_|R], E):- elemento_enesimo(N2, R, E), N2 is N - 1.