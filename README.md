# Programming Languages, Concepts and Implementation: Projects/Assignments

Course Objectives: An overview of programming languages; features, structures, and implementation;
examples taken from various programming paradigms. Introduction to formal specifications of languages. 

The course examines the fundamental principles at work in the most important programming languages, highlights the critical relationship between language design and language implementation, and devotes special attention to issues of importance to the expert programmer. The focus of the course will always be on the concepts of programming languages, while the specific languages discussed are only present to support these concepts. Students should emerge better prepared to choose the best language for particular projects, to understand and make more effective use of languages they already know, and to learn new languages quickly and completely.

Assignments + Descriptions:

Conceptual exercises: lkemmelmeier_cs326_hw1, lkemmelmeier_cs326_hw3, lkemmelmeier_cs326_hw4, lkemmelmeier_cs326_hw5, lkemmelmeier_cs326_hw6
##
 

* hw2.txt (Scheme implementations)

  *  Question 1: Function (subst x y L), which returns a list identical to L except that every occurrence of x has been replaced with y.
    
  *  Question 2: Function (all-different? L), which determines whether all elements of list L are distinct (that is, not equal?).
 
  *  Question 3: Binary tree with lists: three auxiliary functions (left T), (right T) and (val T) which return the left subtree, the right subtree, and the value in the root of tree T, respectively
 
     * 3A) Recursive function (n-nodes T), which returns the number of nodes in the tree T
 
     * 3B) Recursive function (n-leaves T), which returns the number of leaves in the tree T
 
     * 3C) Recursive function (height T), which returns the height of
the tree T

     * 3D) Recursive function (postorder T), which returns the list of all elements in the tree T corresponding to a postorder traversal of the tree

  * Question 4: Recursive Scheme function (flatten L), which takes as arguments a list L (possibly containing sublists), and returns a list containing all elements in L and its sublists, but all at the same level
 
  * Question 5: Recursive function (member-bst? V T), which determines whether V appears as an element in the binary search tree T
 
   

* hw7.pl (Prolog implementations)

  * Question 1:

    * 1A) Predicate isSet(S), which succeeds if the list S is a set.
    * 1B) Predicate isSubset(A,S), which succeeds if the set A is a subset of the set S.
    * 1C) Predicate unionSets(A,B,C), which succeeds if the union of sets A and B is the set C.
    * 1D) Predicate intersectionSets(A,B,C), which succeeds if the intersection of sets A and B is the set C.
  
  * Question 2: Predicate tally(E,L,N), which succeeds if N is the number of occurrences of element E in list L

  * Question 3: Predicate subst(X,Y,L,L1), which succeeds if list L1 is identical to list L except that all occurrences of X in L are replaced with Y in L1.

  * Question 4: Predicate insert(X,L,L1), which succeeds if list L1 is identical to the sorted list L with X inserted at the correct place. Assume that L is already sorted.

  * Question 5 Predicate flattenList(A,B), which succeeds if A is a list (possibly containing sublists), and B is a list containing all elements in A and its sublists, but all at the same level.
