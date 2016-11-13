module Sum where

    sum1 :: [Integer] -> Integer
    sum1 [] = 0
    sum1 (x:xs) = x + sum1 xs

    bring :: [[a]] -> [a]
    bring [] = []
    bring (x:xs) = x ++ bring xs 

    

