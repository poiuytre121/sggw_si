didBetter(X,Y,order(X,Y,_)).
didBetter(X,Y,order(X,_,Y)).
didBetter(X,Y,order(_,X,Y)).
clue1(S):-didBetter(child(peter,_),child(_,red),S).
clue2(S):-didBetter(child(jack,gold),child(_,green),S).

%zapytanie clue1(S), clue2(S).