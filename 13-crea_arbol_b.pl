
% crea_arbol_b(+ListaEtiquetas, -ArbolBin)
% es cierto cuando ArbolBin unifica con un árbol binario balanceado
% que contiene las etiquetas de ListaEtiquetas

crea_arbol_b([], nil).
crea_arbol_b([C|R], a(C, A1, A2)):- append(H1, H2, R), length(H2, M), length(R, T), M is T div 2,
	crea_arbol_b(H1, A1), crea_arbol_b(H2, A2).