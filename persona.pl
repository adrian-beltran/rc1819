
% comentario para decir que las variables empiezan por mayus

% hombre(Persona)
% es cierto si Persona es un hombre

hombre(luis).
hombre(antonio).
hombre(jose).

% persona(P)
% es cierto si P es hombre o es mujer

% Si hombre(P) -> persona(P)
persona(P) :- hombre(P).
% Si mujer(P) -> persona(P)
persona(P) :- mujer(P).

% mujer(Persona)
% es cierto si Persona es mujer
mujer(maria).
mujer(luisa).
mujer(marta).
