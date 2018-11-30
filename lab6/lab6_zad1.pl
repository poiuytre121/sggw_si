edge(a,b).
edge(b,c).
edge(a,d).
edge(d,e).
edge(d,f).
edge(f,a).
edge(f,g).
go(X,X,_).
go(X,Y,T):-edge(X,Z),not(member(Z,[X|T])),go(Z,Y,[X|T]).
go1(X,X,T,[X|T]).
go1(X,Y,T,P):-edge(X,Z),not(member(Z,[X|T])),go1(Z,Y,[X|T],P).
go2(X,X,_,[X]).
go2(X,Y,T,[X|P]):-edge(X,Z),not(member(Z,[X|T])),go2(Z,Y,[X|T],P).
%zapytanie go2(a,g,[],X)