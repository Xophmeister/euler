# Problem 2

Each new term in the Fibonacci sequence is generated by adding the
previous two terms. By starting with 1 and 2, the first 10 terms will
be:

> 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not
exceed four million, find the sum of the even-valued terms.

## Solution

It's easiest to just generate the sequence and sum the even terms.

However, the Fibonacci sequence has a closed-form expression -- [Binet's
formula](http://en.wikipedia.org/wiki/Binet's_formula) -- in the form of
a pair of geometric terms. We also see that every third term is even and
note that the partial sum of a geometric series can be easily evaluated.
Thus, there is an analytic solution. The only caveat being the number of
terms we need to sum (i.e., such that we consider terms under the given
bound).