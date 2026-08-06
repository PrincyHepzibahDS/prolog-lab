male(john).
male(bob).

female(mary).
female(alice).

parent(john,bob).
parent(mary,bob).
parent(bob,alice).

father(X,Y):-
    male(X),
    parent(X,Y).

mother(X,Y):-
    female(X),
    parent(X,Y).

grandparent(X,Y):-
    parent(X,Z),
    parent(Z,Y).