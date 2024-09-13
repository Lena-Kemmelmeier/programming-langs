# Programming Languages, Concepts and Implementation: Projects/Assignments

* hw7.pl (Prolog implementations)

  * Question 1: Consider an implementation of sets with Prolog lists. A set is an unordered collection of
  elements, without duplicates.

    1A) Predicate isSet(S), which succeeds if the list S is a set.
    1B) Predicate isSubset(A,S), which succeeds if the set A is a subset of the set S.
    1C) Predicate unionSets(A,B,C), which succeeds if the union of sets A and B is the set C.
    1D) Predicate intersectionSets(A,B,C), which succeeds if the intersection of sets A and B is the set C.
  
  * Question 2: Predicate tally(E,L,N), which succeeds if N is the number of occurrences of element E in list L

  * Question 3: Predicate subst(X,Y,L,L1), which succeeds if list L1 is identical to list L except that all occurrences of X in L are replaced with Y in L1.

  * Question 4: Predicate insert(X,L,L1), which succeeds if list L1 is identical to the sorted list L with X inserted at the correct place. Assume that L is already sorted.

  * Question 5 Predicate flattenList(A,B), which succeeds if A is a list (possibly containing sublists), and B is a list containing all elements in A and its sublists, but all at the same level.
