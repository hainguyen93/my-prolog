
% COM2003: Automata, Logic and Computation
% Prolog Lab Class Code File

parent_of(pam,bob).
parent_of(tom,bob).
parent_of(tom,liz).
parent_of(bob,ann).
parent_of(bob,pat).
parent_of(pat,jim).
parent_of(kim,sue).
parent_of(lee,sue).
parent_of(sue,ann).
parent_of(ann,jo).
parent_of(liz,bill).

male(tom).
male(bob).
male(jim).
male(lee).
male(bill).

female(pam).
female(liz).
female(pat).
female(ann).
female(kim).
female(sue).
female(jo).

% New rules

mother(X) :- female(X), parent_of(X,Y).
father(X) :- male(X), parent_of(X,Y).

% sibling
sibling_of(X,Y) :- parent_of(Z,X), 
                   parent_of(Z,Y).
% length of list                 
items([],0).
items([X|Xs],N) :- items(Xs,M), N is M+1.
                  
% split into 2 sublists

append(X,[],[X]).
append(N,A,B) :- append(N,A,[N|A]).
 
split([],_,[],[]).
split([X|Xs],N,[X|A],B) :- X >= N, split(Xs,N,A,B).
split([X|Xs],N,A,[X|B]) :- X < N, split(Xs,N,A,B).

triangle(1,1).
triangle(N,X) :- M is N-1, triangle(M,Y), X is Y+N.

length([],0).
length([X|Xs],N) :- length(Xs,M), N is M+1.

factorial(N,F) :- factorial(N,1,F).

factorial(N,T,F) :- N>0, T1 is T*N, N1 is N-1, factorial(N1,T1,F).
factorial(0,F,F).

zero([0|Xs]).
zero([X|Xs]) :- zero(Xs).

non_zero(Xs) :- zero(Xs),!,fail.
non_zero(Xs).

elem(X,[X|Ys]).
elem(X,[Y|Ys]) :- elem(X,Ys).

missing(X,Ys) :- elem(X,Ys), !, fail.
missing(X,Ys). 































