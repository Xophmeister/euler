# Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or
5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

## Solution

This can be solved analytically by summing all the multiples of 3 and
all the multiples of 5, below 1000, and then subtracting the multiples
of 15 (i.e., so we don't count multiples of 3 and 5 twice). This is
O(1), so is about as efficient as we can get.

Alternatively, we can just iterate through all the numbers and
accumulate on multiples of 3 or 5. This is O(n), but the code can be a
bit more readable.
