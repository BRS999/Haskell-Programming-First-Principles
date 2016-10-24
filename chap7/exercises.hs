module Exercises where 

    tensDigit :: Integral a => a -> (a, a)
    tensDigit x = x `divMod` 10

    hunsD :: Integral a => a -> (a, a)
    hunsD x = x `divMod` 100


    foldBool3 :: a -> a -> Bool -> a 
    foldBool3 x y True = x 
    foldBool3 x y False = y

    foldBool1 :: a -> a -> Bool -> a 
    foldBool1 x y z =
            case z == True of
                True -> x
                False -> y

    foldBool2 :: a -> a -> Bool -> a 
    foldBool2 x y z
        | z == True = x
        | otherwise = y

    g :: (a -> b) -> (a, c) -> (b, c)
    g = undefined
    
