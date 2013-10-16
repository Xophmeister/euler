isPalindromic :: Integer -> Bool
isPalindromic x = show x == (reverse . show) x

main :: IO ()
main = print $ maximum [x * y | x <- [100..999], y <- [100..999], y >= x, isPalindromic $ x * y]
