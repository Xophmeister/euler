# Problem 5

2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of
the numbers from 1 to 20?

## Solution

We can construct this number by looking at the prime factors of each
number from 1 to 20. We take the product of the unique factors, raised
to its maximum multiplicity. That is, for 1 to 10:

     2*  2
     3*  3
     4   2×2
     5*  5
     6   2×3
     7*  7
     8   2×2×2
     9   3×3
    10   2×5

    2^3 × 3^2 × 5^1 × 7^1 = 2520

This is the known as the *least common multiple*.
