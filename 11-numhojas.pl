
% num_hojas(+Arbol, -Num)
% Es cierto si Num unifica con el número de hojas del Arbol

num_hojas(nil,0).
num_hojas(t(_,nil,nil), 1).
num_hojas(t(_,I,D), N) :- I \= nil, D \= nil, num_hojas(I, NI), num_hojas(D, ND), N is NI + ND.

num_hojas(t(_,nil,D), N) :- num_hojas(D, N), D \= nil.
num_hojas(t(_,I,nil), N) :- num_hojas(I, N), I \= nil.

arbol(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,nil,t(14,nil,nil)))).