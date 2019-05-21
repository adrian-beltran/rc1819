% Problema de Estado

% Juego de canívales y misioneros (Parecido a Bart y el bote)

% 1. Representación del estado
% estado(MisionerosDer, CanivalesDer, Bote)

% 1 o 2 personas en el bote
% No puede haber más canívales que misioneros en ningún lado

% Estado inicial
inicial(estado(3,3, derecha)).
% Estado final
final(estado(0,0, _)).

% 2. Representación de los movimientos

%mov( mover(M, C, izq), estado(MD, CD, ), estado(N)):- 
%	T is M + C, T =< 2, T >=1, 
%	M =< MD, C=< CD,
%	CD =< MD.
%	MI is 3 - MD, CI is 3 - CD,
%	NMI is MI + M, NCI is CI + C,
%	NCI =< NMI, 
%	NMD is MD - M, NCD is CD - C,
%	NCD, =< NMD.

% Más simple:
mov(pasar(M, C, izquierda), estado(MD, CD, derecha), estado(MDN, CDN, izquierda)) :- 
	pasar(M,C), 
	M =< MD, C =< CD,
	MDN is MD - M, CDN is CD - C,
	\+ no_valido(estado(MDN, CDN, _)).
mov(pasar(M, C, derecha), estado(MD, CD, izquierda), estado(MDN, CDN, derecha)) :- 
	pasar(M,C),
	MI is 3 - MD, CI is 3 - CD,
	M =< MI, C =< CI,
	MDN is MD + M, CDN is CD + C,
	\+ no_valido(estado(MDN, CDN, _)).

% pasar(Misioneros, Canivales).
% lista de pasos válidos
pasar(2,0).
pasar(0,2).
pasar(1,1).
pasar(1,0).
pasar(0,1).

% no_valido(estado(MisionerosDer, CanivalesDer, Bote)).
% lista de estados no válidos
no_valido(estado(2,3,_)).
no_valido(estado(1,3,_)).
no_valido(estado(1,2,_)).
no_valido(estado(1,0,_)).
no_valido(estado(2,0,_)).
no_valido(estado(2,1,_)).
	
% 3. Crear el camino
% camino(+EstadoIni, +EstadoFin, +Visitados, -Camino)
% es cierto cuando Camino unifica con una lista de movimientos
% para ir desde EstadoIni hasta EstadoFin sin revisitar Visitados

camino(Ini, Ini, _,[]).
camino(Ini, Fin, Visitados, [pasar(M,C,Direccion)|Camino]):-
	mov(pasar(M, C, Direccion), Ini, Temp),
	\+ member(Temp, Visitados),
	camino(Temp, Fin, [Temp|Visitados], Camino).


	
	