
% mas_veces(+Lista, -Elem, -Num)
% es cierto cuando Elem unifica con el elemento que se repite más veces
% en la lista Lista y Num unifica con el número de veces que se repite dicho elemento

mas_veces([], _, 0).

mas_veces([Cab|Resto], Cab, N) :-
	mas_veces(Resto, Cab, N2),
	N is N2 + 1.