% Lena Kemmelmeier - CS 326, HW7

% Question 1a
isSet([]). % base case: an empty list is a set
isSet([H|T]) :- \+ member(H, T), isSet(T).  % a list is a set if the item in the head is not in the tail of the list, and if the tail of the list is a set (this is a recursive call)

% Question 1b
isSubset([],_). % base case: if set S is empty it will be considered a subset of set A
isSubset([H|T], A) :- member(H, A), isSubset(T,A). % set S is a subset of set A if its head is a member of set A, and if the tail of set S is a subset of set A (recursive call)

% Question 1c -  succeeds if the union of sets A and B is the set C
unionSets([],B,B). % the union of an empty set and another set is just that nonempty set
unionSets([H|T],B,C):- member(H,B), !, unionSets(T,B,C). % if the head of the first list is a member of the second set, then we don’t include the head in the result (C) because it is already in B, we do a recursive call on the tail
unionSets([H|T],B,[H|Ctail]):- unionSets(T,B,Ctail). % if the head of the first set is not a member of the second set, we include the head in C and do a recessive call on the tail of C (we don’t want to include H more than once)

% Question 1d - intersection of two sets
intersectionSets([],_,[]). % if we one set is empty, the intersection of A and B will just be another empty set
intersectionSets([H|T],B,[H|Ctail]) :- member(H,B), intersectionSets(T,B,Ctail). % H is a member of set B, adds H to set C, recursive call on the tail
intersectionSets([_|T],B,C) :- intersectionSets(T,B,C). % if head of A isn’t in B, keep C the same, but do recursive call on the tail

% Question 2
tally(_,[],0). % an empty list will always have 0 occurrences of E
tally(E, [E|T], N) :- tally(E,T,C), N is C + 1. % if E is the same as the head of L, recursive call on the tail and increment the tally
tally(E,[_|T], N) :- tally(E, T, N). % don’t increment the tally, recessive call on the tail

% Question 3
subst(_,_,[],[]). % making any subs in an empty list just means the other list will be empty
subst(X,X,L,L). % subbing 1 for 1 for example means the other list will be the same
subst(X, Y, [X|T], [Y|U]) :- subst(X, Y, T, U). % if X is the head of L replace it with Y, recursive call on tail
subst(X, Y, [H|T], [H|U]) :- subst(X, Y, T, U). % if X is not the same as the head of L, copy head over, recursive call on tail

% Question 4
insert(X,[],[X]). % insert one thing into the empty list, list will contain just that one thing
insert(X,[H|T],[X,H|T]):- X < H, !. % if H is greater than X, put X at beginning of the list
insert(X,[H|T],[H|U]):- insert(X,T,U). % insert X into tail of list

% Question 5
flattenList([], []). % base case
flattenList([H|T], Flat) :- is_list(H), !, flattenList(H, FlatH), flattenList(T, FlatT), append(FlatH, FlatT, Flat).
flattenList([H|T], [H|FlatT]) :- \+ is_list(H), flattenList(T, FlatT).

