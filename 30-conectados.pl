% Vértices conectados en grafos dirigidos y no dirigidos
% conectado(Grafo, Ini, Fin)
% Cierto si el vértici ini está conectado mediante un arista con el vértice
% Fin en el grafo

% Para dirigidos
conectadoD(g(_,A), Ini, Fin) :- member(a(Ini, Fin), A).

% Para no dirigidos
conectadoND(g(_,A), Ini, Fin) :- member(a(Ini, Fin), A).
conectadoND(g(_,A), Ini, Fin) :- member(a(Fin, Ini), A).

% camino(+Grafo, +Ini, +Fin, +Visitados, -Camino, -Peso)
% es cierto si Camino unifica con el camino de vértices o aristas que va desde Ini hasta Fin 
% sin repetir vértices o aristas (dependiendo del problema)
% y con coste total Peso

% con lista de vértices y visitados de aristas, sin costes y con grafo dirigido
camino(g(_,A), Ini, Fin, _, [Ini, Fin]):- member(a(Ini,Fin), A).
camino(G, Ini, Fin, Visitados, [Ini|Camino]):- conectadoD(G, Ini, Tmp),
	\+ member(a(Ini, Tmp), Visitados),
	camino(G, Tmp, Fin, [a(Ini,Tmp)|Visitados], Camino).
	
% EJERCICIO DE EXAMEN

% Detectar los ciclos de un grafo y guardarlos en una misma lista con bagof
ciclos(g(V,A), R):- bagof(Ciclo, ciclo(g(V,A), Ciclo), R).
ciclo(g(V,A), Ciclo) :- member(Vertice, V), 
	camino(g(V,A), Vertice, Vertice, [], Ciclo).

g1(g([a,b,c,d], [a(a,b), a(b,c), a(c,a), a(c,d), a(d,a)])).