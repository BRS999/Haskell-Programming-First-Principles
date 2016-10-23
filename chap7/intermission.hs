module Intermission where

    k (x, y) = x
    k1 = k ((4-1), 10)
    k2 = k ("three", (1 + 2)) 
    k3 = k (3, True)

    -- k :: (a, b) -> a
    -- k1 :: Integer
    -- k2 :: [Char]
    -- k3 :: Integer
    -- k1, k3 = 3

    f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f)) 
    f (a, b, c) (d, e, f) = ((a, d), (c , f))

    --Case expression
    --functionC x y = if (x > y) then x else y
    functionC x y = 
        case x > y of 
            True -> x
            False -> y

    -- ifEvenAdd2 n = if even n then (n+2) else n
    ifEvenAdd2 n =
        case n `mod` 2 == 0 of
            True -> n + 2
            False -> n

    nums x =
        case compare x 0 of
            LT -> -1 
            GT -> 1
            EQ -> 0

    -- Dodgy
    
    dodgy x y = x + y * 10 
    oneIsOne = dodgy 1 
    oneIsTwo = (flip dodgy) 2

    -- dodgy 1 0 = 1
    -- dodgy 1 1 = 11
    -- dodgy 2 2 = 22
    -- dodgy 1 2 = 21
    -- dodgy 2 1 = 12
    -- oneIsOne 1 = 11
    -- oneIsOne 2 = 21
    -- oneIsTwo 1 = 21
    -- oneIsTwo 2 = 22
    -- oneIsOne 3 = 31
    -- oneIsTwo 3 = 23 