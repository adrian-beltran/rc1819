% P09 Pack consecutive duplicates of list elements into sublists.
%    If a list contains repeated elements they should be placed in separate sublists.
%
%    Example:
%    ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%    X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

pack([], []).
pack([Pr], [[Pr]]).
pack([Pr,Sg|R], [[Pr]|Res]) :- Pr \= Sg, pack([Sg|R], Res).
pack([Pr,Pr|R], [[Pr|LCa]|Res]) :- pack([Pr|R], [LCa|Res]).