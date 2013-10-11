import Euler

extractFactor :: PrimeFactor -> Integer
extractFactor (PrimeFactor p _) = p

main :: IO ()
main = print $ (extractFactor . last) $ factorise 600851475143
