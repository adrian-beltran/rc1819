% Problema de Estado

% Juego de canívales y misioneros (Parecido a Bart y el bote)

% 1. Representación del estado
% estado(+MisionerosDer, CanivalesDer, Bote)

% 1 o 2 personas en el bote
% No puede haber más canívales que misioneros en ningún lado

% Estado inicial
inicial(estado(3,3, der)).
% Estado final
final(estado(0,0, _)).

% 2. Representación de los movimientos

mov( mover(M, C, izq), estado(MD, CD, ), estado(N)):- 
	T is M + C, T =< 2, T >=1, 
	M =< MD, C=< CD,
	CD =< MD.
	MI is 3 - MD, CI is 3 - CD,
	NMI is MI + M, NCI is CI + C,
	NCI =< NMI, 
	NMD is MD - M, NCD is CD - C,
	NCD, =< NMD.

% 3. Crear el camino
% camino(+EstadoIni, +EstadoFin, +Visitados, -Camino)
% es cierto cuando Camino unifica con una lista de movimientos
% para ir desde EstadoIni hasta EstadoFin sin revisitar Visitados