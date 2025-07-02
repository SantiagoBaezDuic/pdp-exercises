padreDe(abe, abbie).
padreDe(abe, homero).
padreDe(abe, herbert).
padreDe(clancy, marge).
padreDe(clancy, patty).
padreDe(clancy, selma).
padreDe(homero, bart).
padreDe(homero, hugo).
padreDe(homero, lisa).
padreDe(homero, maggie).

madreDe(edwina, abbie).
madreDe(mona, homero).
madreDe(gaby, herbert).
madreDe(jacqueline, marge).
madreDe(jacqueline, patty).
madreDe(jacqueline, selma).
madreDe(marge, bart).
madreDe(marge, hugo).
madreDe(marge, lisa).
madreDe(marge, maggie).
madreDe(selma, ling).

tieneHijo(NombrePersona):-
    padreDe(NombrePersona, _).

tieneHijo(NombrePersona):-
    madreDe(NombrePersona, _).

hermanos(Persona1, Persona2):-
    padreDe(Padre, Persona1),
    padreDe(Padre, Persona2),
    madreDe(Madre, Persona1),
    madreDe(Madre, Persona2).

medioHermanos(Persona1, Persona2):-
    padreDe(Padre, Persona1),
    padreDe(Padre, Persona2),
    madreDe(Madre1, Persona1),
    madreDe(Madre2, Persona2),
    Madre1 \= Madre2.

medioHermanos(Persona1, Persona2):-
    padreDe(Padre1, Persona1),
    padreDe(Padre2, Persona2),
    madreDe(Madre, Persona1),
    madreDe(Madre, Persona2),
    Padre1 \= Padre2.

tioDe(Persona1, Persona2):-
    padreDe(Padre, Persona2),
    hermanos(Padre, Persona1).

tioDe(Persona1, Persona2):-
    padreDe(Padre, Persona2),
    medioHermanos(Padre, Persona1).

abueloMultiple(Persona):-
    padreDe(Persona, Hijo),
    padreDe(Hijo, Nieto1),
    padreDe(Persona, Hijo),
    padreDe(Hijo, Nieto2),
    Nieto1 \= Nieto2.

descendiente(Ancestro, Descendiente):-
    padreDe(Ancestro, Descendiente).

descendiente(Ancestro, Descendiente):-
    madreDe(Ancestro, Descendiente).

descendiente(Ancestro, Descendiente):-
    padreDe(Ancestro, Intermediario),
    descendiente(Intermediario, Descendiente).

descendiente(Ancestro, Descendiente):-
    madreDe(Ancestro, Intermediario),
    descendiente(Intermediario, Descendiente).

