

% num_hojas_gen(+Arbol_g, -Num)
% es cierto cuando Num unifica con el número de hojas de Arbol_g

num_hojas_gen(t(_, Lista_hijos), R) :- num_hojas_gen(Lista_hijos, R).

num_hojas_gen([], 1).
num_hojas_gen([Cab|Resto], R) :- num_hojas_gen(Resto, RL), num_hojas_gen(Cab, RC), R is RL + RC, Resto \= [].
num_hojas_gen([Cab|Resto], R) :- num_hojas_gen(Cab, R), Resto = [].


arbol_ej(t(a, [t(b,[t(e,[]),t(f,[])]),t(c,[]),t(d,[])])).