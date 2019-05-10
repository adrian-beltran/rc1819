% P15 Duplicate the elements of a list a given number of times.
%    Example:
%    ?- dupli([a,b,c],3,X).
%    X = [a,a,a,b,b,b,c,c,c]
%
%    What are the results of the goal:
%    ?- dupli(X,3,Y).

dupli([], _, []).
dupli([Pr|R], N, Res) :- dupli(R, N, ResA), dupliEle(Pr, N, Res0), append([Res0,ResA], Res).

dupliEle(E, 1, [E]).
dupliEle(E, N, [E|R]) :- N > 1, N2 is N - 1, dupliEle(E, N2, R).

% write(R) -> te muestra la solución R al completo (en vez de ...)