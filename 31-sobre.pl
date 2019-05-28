% Ejemplo sobre

g1(g([a,b,c,d,e], [a(a,b), a(a,c), a(b,c), a(b,d), a(b,e), a(c,d), a(c,e), a(d,e)])).

% Para no dirigidos
conectado(g(_,A), Ini, Fin) :- member(a(Ini, Fin), A).
conectado(g(_,A), Ini, Fin) :- member(a(Fin, Ini), A).

% camino(+Grafo, +Ini, +Fin, +Visitados, -Camino, -Peso)
% es cierto si Camino unifica con el camino de vértices o aristas que va desde Ini hasta Fin 
% sin repetir vértices o aristas (dependiendo del problema)
% y con coste total Peso

% con lista de aristas y visitados de aristas, sin costes y con grafo no dirigido
camino(g(_,A), Ini, Fin, _, [a(Ini,Fin), Fin]):- member(a(Ini,Fin), A).
camino(G, Ini, Fin, Visitados, [a(Ini,Tmp)|Camino]):- conectado(G, Ini, Tmp),
	\+ member(a(Ini, Tmp), Visitados),
	camino(G, Tmp, Fin, [a(Ini,Tmp), a(Tmp,Ini)|Visitados], Camino).
	
% EJERCICIO DE EXAMEN

% Detectar los ciclos de un grafo y guardarlos en una misma lista con bagof
ciclos(g(V,A), R):- bagof(Ciclo, ciclo(g(V,A), Ciclo), R).
ciclo(g(V,A), Ciclo) :- member(Vertice, V), 
	camino(g(V,A), Vertice, Vertice, [], Ciclo).

% g1(G), ciclo(G,Ciclo), length(Ciclo,8).