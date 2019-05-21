
% Hanoi

% hanoi(+NumeroDiscos, +X, +Y, +Z, -ListaMov).
% Es cierto cuando ListaMov unifica con la lista de movimientos necesarios para pasar 
% NumeroDiscos de la torre A hasta la C utilizando la B como auxiliar

% 1. Mover la torre de n-1 discos de X al Y usando Z como auxiliar
% 2. Mover el disco mayor de X a Z
% 3. Mover la torre de discos de Y a Z usando X como auxiliar
hanoi(1, X, _, Z, [pasar(1,X,Z)]).

hanoi(N, X, Y, Z, R2):-
	N2 is N - 1,
	hanoi(N2, X, Z, Y, M1),
	hanoi(1, X, Y, Z, M2),
	hanoi(N2, Y, X, Z, M3),
	append(M1, M2, R),
	append(R, M3, R2).