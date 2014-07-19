
%Ciudades
ciudad(housband).
ciudad(benyork).
ciudad(austin).
ciudad(abile).
ciudad(winter).

%distancia_housband
distancia(housband, benyork, 242).
distancia(housband, austin, 163).
distancia(housband, abile, 352).
distancia(housband, winter, 183).

%distancia_benyork
distancia(benyork, housband, 242).
distancia(benyork, austin, 203).
distancia(benyork, abile, 187).
distancia(benyork, winter, 97).

%distancia_austin
distancia(austin, housband, 163).
distancia(austin, benyork, 203).
distancia(austin, abile, 216).
distancia(austin, winter, 106).

%distancia_abile
distancia(abile, housband, 352).
distancia(abile, benyork, 187).
distancia(abile, austin, 216).
distancia(abile, winter, 186).

%distancia_winter
distancia(winter, housband, 183).
distancia(winter, benyork, 97).
distancia(winter, austin, 106).
distancia(winter, abile, 186).

%reglas
mayor(X, Y, X) :- X < Y, !. 
mayor(_, Y, Y).
recorrido(A,B,C):- distancia(A,B,C).
recorrido(A,B,C):- distancia(A,B,C),
				recorrido(X,Y,Z),mayor(C,Z,M).

%consultas
?- recorrido(A,B,C),write("La distancia mas corta desde "),
				write(A),write(" hasta "), write(B),
				write(" es "),write(Z),nl.
