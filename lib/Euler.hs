module Euler where

factorial :: Integral a => a -> a
factorial n = product [2..n]
