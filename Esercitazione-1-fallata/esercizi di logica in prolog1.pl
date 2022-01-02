%tutti i libri sono di storia:
libro(X):-
    storia(X).


%non tutti i libri sono di architettura
libro(X):-
    architettura(X).
libro(X):-
    altra_materia(X).


% i libri nuovi e quelli rari sono costosi
libro_raro(X):-
    libro(X),
    costo_molto(X).

libro_nuovo(X):-
    libro(X),
    costo_molto(X).

%alcuni libri sono rari
libro(X):-
    raro(X).

libro(X):-
    altro_stato(X).

%nessun libro di architettura è usato.
libro(X,architettura):-
    nuovo(X).

%solo pochi libri costano piu dei saggi di architettura
%???

%un libro di architettura è bello
libro(X,architettura):-
    bello(X),!.


%un libro che costa 2000 è di cinema
libro(X):-
    costo(2000),
    cinema(X).
%Due libri di cinema sono esposti allo scaffale 5
libri_cinema_su_scaffale(5,libro(X),libro(Y)):-
    contenuto_in_scaffale(5,libro(X)),
    contenuto_in_scaffale(5,libro(Y)),
    cinema(X),
    cinema(Y).

%Solo due libri di cinema sono esposti nello scaffale 5
libri_cinema_su_scaffale(5,libro(X),libro(Y)):-
    contenuto_in_scaffale(5,libro(X)),
    contenuto_in_scaffale(5,libro(Y)),
    cinema(X),
    cinema(Y),!.











