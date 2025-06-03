% Base de conocimiento (hechos y reglas)
humano(socrates).
ama(juan, maria).
mortal(X) :- humano(X).

% Torres de Hanoi
hanoi(N) :- mover(N, poste1, poste3, poste2).
mover(0, _, _, _).
mover(N, A, B, C) :-
    N > 0,
    M is N - 1,
    mover(M, A, C, B),
    escribir_mov(A, B),
    mover(M, C, B, A).
escribir_mov(Desde, Hasta) :-
    write('mover desde: '), write(Desde),
    write(' hasta: '), write(Hasta), nl.
