dato(g([madrid, cordoba, sevilla, jaen, granada, huelva, cadiz],
         [a(huelva, sevilla, a49, 94),
          a(sevilla, cadiz,ap4, 125),
          a(sevilla, granada, a92, 256),
          a(granada, jaen,a44, 97),
          a(sevilla, cordoba, a4, 138),
          a(jaen,madrid, a4, 335),
          a(cordoba, madrid, a4, 400)]
)).
% dato(G), camino(G, huelva, madrid,[],Camino, Distancia).

% conectado(+Grafo, +Inicio, +Fin, +Nombre, -Distancia)
conectado(g(_,A), Ini, Fin, Nom, Dist):- member(a(Ini,Fin,Nom,Dist), A).
conectado(g(_,A), Ini, Fin, Nom, Dist):- member(a(Fin,Ini,Nom,Dist), A).

%camino(Grafo, Inicio, Fin, Visitados, Camino, Distancia)
% con lista de aristas (nombre) y visitados de vértices, con costes y con grafo no dirigido
camino(_, Ini, Ini, _, [], 0).
camino(G, Ini, Fin, Visitados, [a(Ini, Tmp, Nom, Dist)|Camino], PesoTotal):-
  conectado(G, Ini, Tmp, Nom, Dist),
  \+ member(Tmp, Visitados),
  camino(G, Tmp, Fin, [Tmp|Visitados], Camino, Peso),
  PesoTotal is Peso + Dist.
