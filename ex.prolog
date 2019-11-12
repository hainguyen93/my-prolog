change(you, i).
change(are,[am, not]).
change(french, german).
change(do,no).
change(X,X).  /*catch-all*/

alter([],[]).
alter([X|Y],[A|B]) :- change(X,A), alter(Y,B).

/*test for membership*/
member(X,[X|_]).
member(X,[_|Y]) :- member(X,Y).

/*compare words*/
aless(X,Y) :- name(X,L), name(Y,R), alessx(L,R).

alessx([],[_|_]).
alessx([X|_],[Y|_]) :- X < Y.
alessx([A|X],[A|Y]) :- alessx(X,Y).

% return true if an element is not in a list
missing(_,[]).
missing(X,[Y|Ys]) :- X \= Y, missing(X,Ys).

less_than(_,[],[]).
less_than(N,[X|Xs],[X|Ys]) :- X < N, less_than(N,Xs,Ys).
less_than(N,[X|Xs],Ys) :- X >= N, less_than(N,Xs,Ys).

second_last([X,Y|[]],X).
second_last([X|Xs],Y) :- second_last(Xs,Y).

factorial(1,1).
factorial(N,X):- M is N-1, factorial(M,Y), X is Y*N.
