member1(Head,[Head|_]).
member1(X,[_|Tail]) :- member1(X,Tail).
concat1([],L2,L2).
concat1([Head|Tail],L2,[Head|L3]) :- concat1(Tail,L2,L3).
%concat1([a,b],[c],[a,b,c]).  wynik to złączenie 2 list
delete1(Head,[Head|Tail],Tail).
delete1(X,[Y|Tail],[Y|L1]) :- delete1(X,Tail,L1).
%delete1(Y,[a,b,c],X)
len1([],0).
len1([_|Tail],N):-len1(Tail,N1), N is N1+1.
reverse1([],[]).
reverse1([Head|Tail],L2) :- reverse1(Tail,L1),concat1(L1,[Head],L2).
reverse2([Head|Tail],Accumulator,L3) :- reverse2(Tail,[Head|Accumulator],L3).
reverse2([],Accumulator,Accumulator).
sum1([],0).
sum1([Head|Tail],N) :- sum1(Tail,N1), N is N1+Head.
avg1(L,X) :- sum1(L,Z),len1(L,Y),X is Z/Y.
count(_,[],0).
count(Head,[Head|Tail],N):-!,count(Head, Tail, N1),N is N1 + 1.
count(X,[_|Tail],N):-count(X,Tail,N).
double([],[]):-!.
double([H1|T1],[H1,H1|T2]):-double(T1,T2).
repeat1(_,[],[]).
repeat1(N,[H1|T1],L2):-repeat1(N,T1,L3),glue(N,H1,L3,L2).
glue(0,_,L,L).
glue(N,X,L3,L2):-glue(N1,X,[X|L3],L2),N is N1+1.
rlen([Head|Tail],N):-rlen(Head,Q1),rlen(Tail,Q2),!,N is Q1+Q2.
rlen([],0).
rlen(_,1).
sorted([]).
sorted([_]).
sorted([X,Y|T]):-X=<Y,sorted([Y|T]).
perm([],[]).
perm([Head|Tail],L) :- perm(Tail,L1), delete1(Head,L,L1).
naivesort(L1,L2):-perm(L1,L2),sorted(L2).