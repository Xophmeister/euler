sumSqrDiff :: Integer -> Integer
sumSqrDiff n = (n * (n + 1) * (n - 1) * ((3 * n) + 2)) `div` 12

main :: IO ()
main = print $ sumSqrDiff 100
