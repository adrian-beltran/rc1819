

% anchura_gen(+Arbol_gen, -Lista)
% es cierto cuando Lista unifica con las etiquetas de 
% Arbol_gen recorriendo el árbol en anchura

anchura_gen(t(E, L), [E|R]) :- anchura_gen(L, R).


% anchura_gen(+Lista_arboles, -Lista)
% es cierto cuando Lista unifica con las etiquetas de los
% arboles de la Lista_arboles recorridos en anchura

anchura_gen([], []).
anchura_gen([t(E,L)|Resto], [E|RT]) :- append([Resto,L],R), anchura_gen(R, RT).


arbol_ej(t(a, [t(b,[t(e,[]),t(f,[])]),t(c,[]),t(d,[])])).