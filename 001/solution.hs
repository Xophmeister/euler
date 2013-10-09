import Data.List (union)

-- FP Style
sumFizzBuzz :: [Integer] -> Integer
sumFizzBuzz = sum . filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0)

-- FP Style Alternative (requires Data.List)
sumFizzBuzz' :: Integer -> Integer
sumFizzBuzz' max = sum $ [3,6..max] `union` [5,10..max]

-- Analytical Style
sumTerms :: Integer -> Integer -> Integer -> Integer
sumTerms a b i = let terms = ((b - a) `div` i) + 1 in
                 terms * (a + b) `div` 2

main :: IO ()
main = do
  putStr "FP Style        "
  print $ sumFizzBuzz [1..999]

  putStr "FP Alternative  "
  print $ sumFizzBuzz' 999

  putStr "Analytical      "
  print $ (sumTerms 3 999 3) + (sumTerms 5 995 5) - (sumTerms 15 990 15)
