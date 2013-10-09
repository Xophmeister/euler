-- Note to self: Googling for this doesn't help you learn!!
fibonacci :: [Integer]
fibonacci = 1 : 2 : zipWith (+) fibonacci (tail fibonacci)

main :: IO ()
main = print $ sum . filter even $ takeWhile (<4000000) fibonacci
