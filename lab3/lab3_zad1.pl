isnumber(zero).
isnumber(s(X)) :- isnumber(X).
isequal(zero,zero).
isequal(s(X),s(Y)) :- isequal(X,Y).
lessthanequal(zero,X) :- isnumber(X). 
lessthanequal(s(X),s(Y)) :- lessthanequal(X,Y). 
add(zero,X,X) :- isnumber(X).  
add(s(X),Y,s(Z)) :- add(X,Y,Z). %odejmujemy od 1 i 3 liczby 1 aż 1 liczba bedzie zerem, wtedy 2 i 3 musza byc rowne
odd(s(zero)).
odd(s(s(X))) :- odd(X).
even(X) :- isequal(zero,X).
even(s(s(X))) :- even(X).
%mnozenie
times(zero,X,zero) :- isnumber(X).
times(s(X),Y,Z) :- times(X,Y,Q), add(Y,Q,Z). % to jest równoznaczne, Q jest niewiadomą, którą obliczmy z dodawania
% t(2,2,4) -> t(1,2,Q)=a(2,Q,4)->Q=2
% t(1,2,2)-> t(0,2,Q)=(2,Q,2)->Q=0  koniec
quotient(_,zero,_):-false.
quotient(X,Y,Q) :- times(Q,Y,X).
less(zero,X):-isnumber(X),not(isequal(X,zero)).
less(s(X),s(Y)):- less(X,Y).
remainder(_,zero,_):-false.
remainder(X,Y,X):-less(X,Y).
remainder(X,Y,R):-add(Y,Z,X),remainder(Z,Y,R).
fact(zero,s(zero)).
fact(s(N),Y) :- fact(N,Q), times(s(N),Q,Y).
fibonacci(zero,s(zero)).
fibonacci(s(zero),s(zero)).
fibonacci(s(s(X)),Y) :- fibonacci(s(X),Q), fibonacci(X,Z), add(Q,Z,Y).
