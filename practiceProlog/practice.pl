last(X,[X]).
last(X,[_|T]) :-  last(X, T).

listAppend([], X, X).
listAppend(X, [], X).
listAppend([X], Y, [X|Y]).
listAppend([H|T], Y, [H|W]) :- listAppend(T,Y,W).

count(0,[]).
count(N, [_|T]) :- count(N1, T), N is N1 + 1. 

countInst(0, _, []).
countInst(N, E, [H|T]) :- =:=(E,H), countInst(N1, E, T), N is N1 + 1.
countInst(N, E, [H|T]) :- =\=(E,H), countInst(N, E, T).


member(E, [H|_]) :- =:=(E,H).
member(E, [H|T]) :- =\=(E,H), member(E, T).
