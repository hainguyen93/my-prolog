
% COM2003: Automata, Logic and Computation
% Prolog Lab Class Code File
%
% RED AND GREEN CUTS

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% howbig/2:

howbig([A|As],[large|Bs]):- 
    A > 10, 
    howbig(As,Bs).

howbig([A|As],[small|Bs]):- 
    A =< 5,
    howbig(As,Bs).

howbig([A|As],[medium|Bs]):- 
    A > 5, A =< 10,
    howbig(As,Bs).

howbig([],[]). 

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% howbig_green/2:

howbig_green([A|As],[large|Bs]):- 
    A > 10,
    !, 
    howbig_green(As,Bs).

howbig_green([A|As],[small|Bs]):- 
    A =< 5,
    !,
    howbig_green(As,Bs).

howbig_green([A|As],[medium|Bs]):- 
    A > 5, 
    A =< 10,
    !,
    howbig_green(As,Bs).

howbig_green([],[]) :- !. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% howbig_red/2:

howbig_red([A|As],[large|Bs]):- 
    A > 10,
    !, 
    howbig_red(As,Bs).

howbig_red([A|As],[small|Bs]):- 
    A =< 5,
    !,
    howbig_red(As,Bs).

howbig_red([_A|As],[medium|Bs]):- 
    howbig_red(As,Bs).

howbig_red([],[]). 

%%%%%%%%%%%%%%%%%%%%%%%%%%%

