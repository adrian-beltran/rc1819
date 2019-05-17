% Problema de Estado

% Juego de garrafas (Willis y Jackson)

% 1. Representación del estado
% estado(G5, G3)
% G5 representa el número de galones en la garrafa de 5 galones
% G3 representa el número de galones en la garrafa de 3 galones

% Estado inicial
inicial(estado(0,0)).
% Estado final
final(estado(4,_)).

% 2. Representación de los movimientos
% 	A. Llenar garrafa de 5 galones
% 	B. Llenar garrafa de 3 galones
% 	C. Vaciar garrafa de 5 galones
%	D. Vaciar garrafa de 3 galones
%	E. Verter el contenido de 5 en 3
%	F. Verter el contenido de 3 en 5

% mov(+NombreMov, +EstadoAntes, +EstadoDespues)

% A. Llenar garrafa de 5 galones
mov(llenar5, estado(_,G3), estado(5,G3)).
% B. Llenar garrafa de 3 galones
mov(llenar3, estado(G5,_), estado(G5,3)).
% C. Vaciar garrafa de 5 galones
mov(vaciar5, estado(_,G3), estado(0,G3)).
% D. Vaciar garrafa de 3 galones
mov(vaciar3, estado(G5,_), estado(G5,0)).
% E. Verter el contenido de 5 en 3
mov(pasar5a3, estado(G5,G3), estado(0,GT)) :- GT is G5 + G3, GT =< 3.
mov(pasar5a3, estado(G5,G3), estado(G5N,3)) :- GT is G5 + G3, GT > 3, G5N is GT - 3.
% F. Verter el contenido de 3 en 5
mov(pasar3a5, estado(G5,G3), estado(GT,0)) :- GT is G5 + G3, GT =< 5.
mov(pasar3a5, estado(G5,G3), estado(5,G3N)) :- GT is G5 + G3, GT > 5, G3N is GT - 5.

% 3. Crear el camino
% camino(+EstadoIni, +EstadoFin, +Visitados, -Camino)
% es cierto cuando Camino unifica con una lista de movimientos
% para ir desde EstadoIni hasta EstadoFin sin revisitar Visitados

camino(Ini, Ini, _, []).
camino(Ini, Fin, Visitados, [Mov|Camino]):- mov(Mov, Ini, Temp), 
	\+ member(Temp, Visitados), camino(Temp, Fin, [Temp|Visitados], Camino). 
	
	
% camino(estado(0,0), estado(4,_), [estado(0,0)], Camino), length(Camino, 6), write(Camino).
% inicial(I), final(F), camino(I, F, [I], Camino), length(Camino, 6), write(Camino).

