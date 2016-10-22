module Stuff where
    myNum :: Integer
    myNum = 1 :: Integer
    myVal f = f + myNum

    
    stillafunction a b c = a ++ b ++ c

    -- All polymorphic types
    test f g h = myNum

    addone :: Integer -> Integer
    addone x = x + 1

    bindexp :: Integer -> String
    bindexp x = let y = 5 in 
        "the integer was: " ++ show x
        ++ " and y was: " ++ show y

    -- Shadowing?
    bindexp2 :: Integer -> String
    bindexp2 x = let x = 10; y = 5 in
        "the integer was: " ++ show x
        ++ " and y was: " ++ show y

    -- Intermission
    addonifodd n = case odd n of
        True -> f n
        False -> n
        where f = \n -> n + 1

    -- addFive x y = (if x > y then y else x) + 5

    addFive = \x -> \y -> (if x > y then y else x) + 5

    -- mflip f = \x -> \y -> f y x

    mflip f x y = f y x