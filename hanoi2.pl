mortal(X) :- humano(X).

mujer(marie_curie).
mujer(ada_lovelace).
cientifico(marie_curie).
cientifico(aristoteles).
mujer_cientifica(X) :- mujer(X), cientifico(X).

filosofo(socrates).
filosofo(platon).
pensador(X) :- filosofo(X).
pensador(X) :- cientifico(X).

sabio(X) :- filosofo(X), humano(X).
% Consulta: ?- sabio(socrates). → Respuesta: Yes.

% 5. antiguo(socrates).
antiguo(platon).
humano_antiguo(X) :- humano(X), antiguo(X).
