
% crea_arbol(+ListaEtiquetas, -ArbolGen)
% es cierto cuando ArbolGen unifica con un árbol genérico
% que contiene las etiquetas de ListaEtiquetas

crea_arbol([E], a(E, [])).
% Un nodo padre y los demás hijos:
crea_arbol([C|R], a(E, [a(C,[])|L])):- crea_arbol(R, a(E,L)).
% Cada nodo tiene un hijo:
%crea_arbol([C|R], a(C, LA)) :- crea_arbol(R, LA).


