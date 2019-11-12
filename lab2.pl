pos_int_list([]).
pos_int_list([X|Xs]) :- 
          X>0, pos_int_list(Xs).

list_length([],0).
list_length([_X|Xs],L) :- 
          list_length(Xs,L1), 
          L is L1+1.

greater_than_list(_N,[]).
greater_than_list(N,[X|Xs]) :- 
          X>N, 
          greater_than_list(N,Xs).

sum_of_squares(0,0).
sum_of_squares(M,N) :-
          M>0, 
          M1 is M-1, 
          sum_of_squares(M1,N1), 
          N is N1+(M*M).

last_element([X],X).
last_element([_X|Xs],L) :- 
          last_element(Xs,L).   

even_length_list([]).
even_length_list([_X,_Y|Ys]) :-
          even_length_list(Ys).

list_of_squares([],[]).
list_of_squares([X|Xs],[Y|Ys]) :-
          Y is X*X, 
          list_of_squares(Xs,Ys).

double_list([],[]).
double_list([X|Xs],[X,X|Ys]) :-
          double_list(Xs,Ys).

over_ten([],[]).
over_ten([X|Xs],[X|Ys]) :-
          X>10,
          over_ten(Xs,Ys).
over_ten([X|Xs],Ys) :-
          X =< 10,
          over_ten(Xs,Ys).

non_zero([]).
non_zero([X|_Xs]) :- X =:= 0, !, fail.
non_zero([_|Xs]) :- non_zero(Xs).

min(X,Y,Z) :- X =< Y, !, Z is X.
min(_X,Y,Y).
