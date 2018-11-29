parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(joe,jim).
parent(pat,jim).
female(pam).
female(liz).
female(ann).
female(pat).
male(bob).
male(tom).
male(joe).
male(jim).
child(X,Y):- parent(Y,X).
mother(X,Y):- parent(X,Y), female(X).
father(X,Y):-parent(X,Y), male(X).
grandparent(X,Y):-parent(X,Z), parent(Z,Y).
greatgreatgrandparent(X,Y):-parent(X,X1),parent(X1,X2),parent(X2,X3),parent(X3,Y).
ancenstor(X,Z) :- parent(X,Z).
ancenstor(X,Z) :- parent(X,Y), ancenstor(Y,Z).