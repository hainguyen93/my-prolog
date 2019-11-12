draw(0).
draw(N) :- 
       write('*'), 
       N1 is N-1, 
       draw(N1).

draw_triangle(0).
draw_triangle(N) :-  
       draw(N), 
       nl,
       N1 is N-1,
       draw_triangle(N1).


% check partition

devidelist([],[],[]).
devidelist([X|Xs],[X|Ys],Zs) :- devidelist(Xs,Ys,Zs).
devidelist([X|Xs],Ys,[X|Zs]) :- devidelist(Xs,Ys,Zs).


% check membership
 
in_list(A,[A|_Xs]).
in_list(A,[_X|Xs]) :- in_list(A,Xs).

% ordered list

ordered([]).
ordered([_X]).
ordered([X,Y|Ys]) :- X =< Y, ordered([Y|Ys]).

prefix([],_).
prefix([X|Xs],[X|Ys]) :- prefix(Xs,Ys).

% nth element

nth(1,[X|_Xs],X).
nth(N,[_X|Xs],B) :- N1 is N-1, nth(N1,Xs,B).

add([X|Xs],Ys,C) :- add(Xs,[X|Ys],C).
add([],C,C).

concat(A,B,C) :- reverse(A,A1), add(A1,B,C).
