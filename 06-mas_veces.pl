
% mas_veces(+Lista, -Elem, -Num)
% es cierto cuando Elem unifica con el elemento que se repite más veces
% en la lista Lista y Num unifica con el número de veces que se repite dicho elemento

mas_veces(L, E, N) :-
	msort(L,L2),
	comprime(L2,R),
	mayor(R, (E,N)).
	
% comprime(+Lista, -Resultado)
% es cierto cuando Resultado unifica con una lista en el siguiente fomrato:
% 	comprime(([1,1,1,2,2,3,4,4,4], R).
% 	R= [(1,3), (2,2), (3,1), (4,3)]

comprime([], []).
comprime([E], [(E,1)]).
comprime([Cab, Cab|Resto], [(E,N2)|R]):- comprime([Cab|Resto], [(E,N)|R]), N2 is N + 1.
comprime([Cab1, Cab2|Resto], [(Cab1,1)|R]):- Cab1 \= Cab2, comprime([Cab2|Resto], R).

% mayor(+Lista, -Tupla)
% es cierto si Tupla unifica con una tupla (E,N) de mayor N de la lista Lista

mayor([(E,N)],(E,N)).
mayor([(E,N)|Resto], (E,N)):- mayor(Resto, (_,N1)), N > N1.
mayor([(_,N)|Resto], (E1,N1)):- mayor(Resto, (E1,N1)), N1 >= N.