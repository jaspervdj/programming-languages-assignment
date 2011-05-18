Lazy execution: performance issues
==================================

Programs
--------

We have chosen three programs to:

- calculate all Goldbach partitions of a number;
- sort a random list of numbers, using the quicksort algorithm;
- generate the hamming numbers in order.

A `Makefile` is included in the `assignment-1` directory to reproduce all
benchmarks.

Goldbach partition of a number
------------------------------

This program (found in `goldbach-eager.oz` and `goldbach-lazy.oz`) computes the
Goldbach partitions of a number `N` (which it takes as command-line argument).

We can imagine that the lazy version will be very similar to the eager version
in terms of execution: in both cases, all partitions need to be generated.
Hence, we may expect that the lazy version will be a little slower than the
eager version, since laziness always introduces a certain overhead.

The benchmarks confirm this, we can see that the eager version is faster for all
large enough inputs. For this problem, we do not seem to benefit from laziness.

The lazy function does have the benefit that we can reuse it for a program that
only computes one Goldbach partition of a number. In that case, the eager
function will do more work than strictly necessary.

![Running time of calculating the Goldbach partitions for a given N](assignment-1/images/goldbach.pdf)

Quicksort
---------

`sort-eager.oz` and `sort-lazy.oz` implement a quicksort algorithm. The user
passes some `N` as command-line argument to the program. The program will then
generate `N` random numbers, sort them and print the result.

We have similar results compared to the Goldbach problem: all numbers need to be
sorted and printed, so our algorithm does not benefit from laziness.

Note that the lazy quicksort function is, again, more composable. Imagine a
scenario in which we only need the first `X` items of the sorted list (i.e. the
`X` smallest items). We could use something like:

    {List.take {QuickSort L} X R}

When our `QuickSort` function is lazy, the work the algorithm needs to do will
be effectively reduced, since we don't need to generate anything past the first
`X` elements. This is not the case for the eager version.

![Running time of generating and sorting N numbers](assignment-1/images/sort.pdf)

Hamming numbers
---------------

Our last program (see `hamming-eager.oz` and `hamming-lazy.oz`) is able to
generate the first `N` hamming numbers. This `N` is passed as a command-line
argument to the executable.

Here, our lazy program has two main advantages:

- it is shorter, more straighforward, and easier to understand;
- it also performs better.

Note that it is possible to write an eager program that would perform as well as
the lazy program: but this would not be trivial. Basically, we would have to
implement some sort of cache or memoization, and at that point we'd basically be
implementing features of lazy evaluation in our eager language.

We can conclude that this simply is an algorithm which translates better to a
lazy programming language than to an eager programming language.

![Running time of generating N hamming numbers in order](assignment-1/images/hamming.pdf)

Conclusions
-----------

It is obvious that the choice between lazy and eager evaluation, from the
viewpoint of the programming language designer, is not an easy one. We have
shown that both methods have advantages and disadvantages.

One of the key advantages I like most about lazy evaluation, is that it allows
better code reuse in some cases. This was the case for the Quicksort and
Goldbach problems, and another very simple example is the `{Or Xs}` function,
which returns `true` if at least one of the elements in `Xs` is `true`, and
`false` in all other cases. Suppose this is declared as a lazy function, and we
also have a lazy `{Map Xs F}` function, which applies the function `F` to each
element in `Xs`.

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
sometimes very hard to predict time and space complexity, in addition to the
overhead lazy programs have.

If I were to design and implement a programming language, I would thus choose
between:

- A lazily evaluated language with good support for eager evaluation
- An eagerly evaluated language with good support for lazy evaluation

And from those two, I would pick the former, because I personally prefer
increased composability over better performance. Furthermore, most lazy programs
can be made almost as fast as their eager counterparts, by performing a
strictness analysis and adding a little strictness where necessary.
