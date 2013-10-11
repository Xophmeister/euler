-- Rather than using a factorial function, which has a tendency to get
-- very big, very quickly, we'll factor things out manually.
routes :: Integral a => a -> a -> a
routes n m = (product [m'..(n + m)]) `div` (product [2..n'])
             where n' = min n m
                   m' = (max n m) + 1

main :: IO ()
main = print $ routes 20 20
