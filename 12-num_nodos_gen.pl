

% num_nodos_gen(+Arbol_gen, -Num)
% es cierto cuando Num unifica con el número de nodos de Arbol_gen

num_nodos_gen(t(_, Lista_hijos), R) :- num_nodos_lista(Lista_hijos, RL), R is RL + 1.

% num_nodos_lista(+Lista_arboles, -Num)
% es cierto cuando Num unifica con el número de nodos de la Lista_arboles
%% Podría llamarse también num_nodos_gen

num_nodos_lista([], 0).
num_nodos_lista([Cab|Resto], R) :- num_nodos_lista(Resto, RL), num_nodos_gen(Cab, RC), R is RL + RC.



arbol_ej(t(a, [t(b,[]),t(c,[]),t(d,[]),t(e,[])])).