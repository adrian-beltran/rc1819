
% balanceado(+ArbolBin)
% es cierto si ArbolBin es balanceado, es decir,
% para todo nodo la diferencia de altura entre su hijo izquierdo
% y su hijo derecho es como máximo 1

balanceado(nil).
balanceado(a(_, H1, H2)):- altura(H1, A1), altura(H2, A2), D is abs(A1 - A2), D =< 1,
	balanceado(H1), balanceado(H2).
	

% altura(+ArbolBin, -A)
% es cierto si A unifica con la altura del ArbolBin

altura(nil, 0).
altura(a(_, HI, HD), AL) :- altura(HI, AI), altura(HD, AD),
	AA is max(AI, AD),
	AL is AA + 1.
	
asi(a(a, a(b, a(c, nil, nil), a(d, nil, nil)), a(e, a(f, nil, nil), nil))).
ano(a(a, a(b, a(c, a(e, nil, nil), a(f, nil, nil)), a(d, nil, nil)), nil)).