onStreet(X,s(X,_,_,_,_)).
onStreet(X,s(_,X,_,_,_)).
onStreet(X,s(_,_,X,_,_)).
onStreet(X,s(_,_,_,X,_)).
onStreet(X,s(_,_,_,_,X)).
middle(X,s(_,_,X,_,_)).
first(X,s(X,_,_,_,_)).
left(X,Y,s(X,Y,_,_,_)).
left(X,Y,s(_,X,Y,_,_)).
left(X,Y,s(_,_,X,Y,_)).
left(X,Y,s(_,_,_,X,Y)).
right(X,Y,S):-left(Y,X,S).
next_to(X, Y, S) :- left(X, Y, S). 
next_to(X, Y, S) :- left(Y, X, S).
clue(S):-onStreet([anglik,czerwony,_,_,_],S),
    onStreet([hiszpan,_,_,_,pies],S),
    onStreet([_,zielony,_,kawa,_],S),
    onStreet([ukrainiec,_,_,herbata,_],S),
    right([_,zielony,_,_,_],[_,ivory,_,_,_],S),
    onStreet([_,_,tenis,_,waz],S),
    onStreet([_,żółty,szachy,_,_],S),
    middle([_,_,_,mleko,_],S),
    first([norweg,_,_,_,_],S),
    next_to([_,_,rugby,_,_],[_,_,_,_,lis],S),
    next_to([_,_,szachy,_,_],[_,_,_,_,koń],S),
    onStreet([_,_,siatkówka,sok,_],S),
    onStreet([japończyk,_,go,_,_],S),
    next_to([norweg,_,_,_,_],[_,niebieski,_,_,_],S),
    next_to([_,_,_,herbata,_],[_,_,_,kakao,_],S).

%zapytanie    clue(S),onStreet([_,_,_,_,zebra],S)