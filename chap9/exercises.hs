module Exercises where 

    -- Exercise: EnumFromTo
    
    eftBool :: Bool -> Bool -> [Bool]
    eftBool x y = enumFromTo x y :: [Bool]

    eftOrd :: Ordering -> Ordering -> [Ordering]
    eftOrd x y = enumFromTo x y :: [Ordering]

    eftInt :: Int -> Int -> [Int]
    eftInt x y = enumFromTo x y :: [Int]

    eftChar :: Char -> Char -> [Char]
    eftChar x y = enumFromTo x y :: [Char]