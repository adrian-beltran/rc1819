

% lista_hojas_gen(+Arbol_g, -Lista_hojas)
% es cierto cuando Num unifica con el número de hojas de Arbol_g

lista_hojas_gen(t(Et, []), [Et]).
lista_hojas_gen(t(_, Lista_hijos), R) :- Lista_hijos \= [], lista_hojas_gen(Lista_hijos, R).

lista_hojas_gen([], []).
lista_hojas_gen([Cab|Resto], R) :- lista_hojas_gen(Resto, RL), lista_hojas_gen(Cab, RC), append([RC,RL], R).


arbol_ej(t(a, [t(b,[t(e,[]),t(f,[])]),t(c,[]),t(d,[])])).