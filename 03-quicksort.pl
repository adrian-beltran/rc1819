
% quicksort(+Lista, -R).
% Es cierto si R contiene los elementos de Lista ordenados de menor a mayor
% Lista puede contener elementos repetidos

quicksort([],[]).
quicksort([Ca|Resto], R) :- dividir(Ca, Resto, Me, Ma),
	quicksort(Me, RMe), quicksort(Ma, RMa),
	append(RMe, [Ca|RMa], R).

% dividir(+P, +Lista, -Menores, -Mayores).
% es cierto cuando Menores unifica con los elementos de Lista que son menores
% o iguales que P y Mayores cuando lo hace con los elementos mayores que P

dividir(P, [], [], []).
dividir(P, [Ca|Resto], [Ca|Mn], My) :- P > Ca,
	dividir(P, Resto, Mn, My).
dividir(P, [Ca|Resto], Mn, [Ca|My]) :- P =< Ca,
	dividir(P, Resto, Mn, My).
