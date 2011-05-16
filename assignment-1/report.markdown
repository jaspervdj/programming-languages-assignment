### Conclusions

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
