Lazy execution: performance issues
==================================

Programs
--------

We have chosen three programs to:

- calculate the Goldbach partition of a number (if it exists);
- sort a random list of numbers, using the quicksort algorithm;
- generate the hamming numbers in order.

Goldbach partition of a number
------------------------------

This program (found in `goldbach-eager.oz` and `goldbach-lazy.oz`) computes a
Goldbach partition of a number `N` (which it takes as command-line argument).

Quicksort
---------

`sort-eager.oz` and `sort-lazy.oz` implement a quicksort algorithm. The user
passes a certain `N` as command-line argument to the program. The program will
then generate `N` random numbers, sort them and print the result.

We can imagine that the lazy version will be very similar to the eager version
in terms of execution: in both cases, all elements of the sorted list need to be
generated. Hence, we may expect that the lazy version will be a little slower
than the eager version, since laziness always introduces a certain overhead.

![How long does it take to generate and sort N numbers? Lazy version: green, eager version: red](assignment-1/images/sort.pdf)

Hamming numbers
---------------

Our last program (see `hamming-eager.oz` and `hamming-lazy.oz`) is able to
generate the first `N` hamming numbers. This `N` is passed as a command-line
argument to the executable.

Conclusions
-----------

It is obvious that the choice between lazy and eager evaluation, from the
viewpoint of the programming language designer, is not an easy one. We have
shown that both methods have advantages and disadvantages.

One of the key advantages I like most about lazy evaluation, is that it allows
better code reuse in some cases. A standard example is the `{Or Xs}` function,
which returns `true` if at least one of the elements in `Xs` is `true`. Suppose
this is declared as a lazy function, and we also have a lazy `{Map Xs F}`
function, which applies the function `F` to each element in `Xs`.

We can then define an `{Any Xs P}` function, by reusing the `Or` and `Map`
functions:

    declare
    fun lazy {Any Xs P}
       {Or {Map Xs P}}
    end

This reuse is possible using eager evaluation -- but the result would not be
optimal. In our lazy version, the (potentially expensive) predicate would not be
applied to the elements in `{List.drop Xs N}` when the element at position `N`
already satisfied the predicate.

On the other hand, I think a major disadvantage of lazy evaluation is that it is
sometimes very hard to predict time and space complexity.
