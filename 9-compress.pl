% P08 Eliminate consecutive duplicates of list elements.
%    If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
%
%    Example:
%    ?- compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%    X = [a,b,c,a,d,e]

compress([],[]).
compress([Pr],[Pr]).
compress([Pr,Pr|R], Res) :- compress([Pr|R], Res).
compress([Pr,Sg|R], [Pr|Res]) :- Pr \= Sg, compress([Sg|R], Res).