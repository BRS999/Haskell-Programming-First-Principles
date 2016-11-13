module Sum where

    sum1 :: [Integer] -> Integer
    sum1 [] = 0
    sum1 (x:xs) = x + sum1 xs

    bring :: [[a]] -> [a]
    bring [] = []
    bring (x:xs) = x ++ bring xs 

    psh :: Integer -> String
    psh x 
        | x == 0  = "zero"
        | x <  0  = "less"
        | x >  0  = "more"


    

