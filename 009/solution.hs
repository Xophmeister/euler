main :: IO ()
main = print $ head [a * b * c | c <- [3..997], b <- [2..c], a <- [1..b],
                                 a^2 + b^2 == c^2,
                                 a + b + c == 1000]
