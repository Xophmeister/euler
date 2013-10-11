module Euler where

-- Note to self: Don't just copy-and-paste Google'd implementations of
-- various algorithms and use them as black boxes. That's cheating!

import Data.List

-- Factorial
-- n! = product [2, 3, 4, ..., n]
-- n.b., 0! = 1! = 1
factorial :: Integral a => a -> a
factorial n = product [2..n]

-- Fibonacci Sequence
fibonacci :: [Integer]
fibonacci = 1 : 2 : next fibonacci
            where next (a:b:s) = (a + b) : next (b:s)

{- Google'd Solution:
   fibonacci = 1 : 2 : zipWith (+) fibonacci (tail fibonacci)
  
   fibonacci     tail       zipped                 summed
   ------------- ---------- ---------------------- ----------
   [1, 2]        [2]        [(1,2)]                [3]
   [1, 2, 3]     [2, 3]     [(1,2), (2,3)]         [3, 5]
   [1, 2, 3, 5]  [2, 3, 5]  [(1,2), (2,3), (3,5)]  [3, 5, 8]
   etc.

   This is cute...but not immediately obvious to my baby steps!       -}

-- Primes
-- This isn't my work... HANG YOUR HEAD IN SHAME!
primes :: [Integer]
primes = 2 : sieve [3,5..]
         where sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]

-- Prime Factorisation
-- (This one's mine... It could probably do with some work!)
-- x = (p1 ^ n1) * (p2 ^ n2) * ... * (pk ^ nk)
data PrimeFactor = PrimeFactor Integer Int
                   deriving (Show)

factorise :: Integer -> [PrimeFactor]
factorise 1 = [PrimeFactor 1 1]
factorise x = map toPrimeFactor (group $ getFactors x)
              where toPrimeFactor a = PrimeFactor (head a) (length a)
                    getFactors :: Integer -> [Integer]
                    getFactors 1 = []
                    getFactors a = factor : (getFactors $ a `div` factor)
                                   where factor = head $ filter (\p -> a `mod` p == 0) potentialFactors
                                         potentialFactors = takeWhile (<= a) primes
