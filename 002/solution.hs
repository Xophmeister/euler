import Euler (fibonacci)

main :: IO ()
main = print $ sum $ filter even $ takeWhile (<4000000) fibonacci
