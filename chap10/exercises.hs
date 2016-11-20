module Exercises where 

    -- Exercises: Understanding Folds
    -- 1 c
    -- 2 (normal)
    -- (((1 * 1) 2 ) 3 )
    -- ((1 * 2) 3)
    -- (2 * 3)
    -- 6
    -- flipped
    -- (((1 * 1) 2 ) 3 )
    -- ((2 * 1) 3)
    -- (3 * 2)
    -- 6
    -- 3 c
    -- 4 a
    -- 5 a) foldr (++) "" ["woot", "WOOT", "woot"]
    -- 5 b) foldr max ' ' "fear is the little death"
    -- 5 c) foldr (&&) True [False, True]
    -- 5 d) Nope
    -- 5 e) foldr ((++) . show) "" [1..5]
    -- 5 f) foldr const 1 [1..5]
    -- 5 g) foldr const '' "tacos"
    -- 5 h) foldl (flip const) ' ' "burritos"
    -- 5 i) foldl (flip const) 0 [1..5]


    -- Chapter Exercises

    stops  = "pbtdkg"
    vowels = "aeiou"

    tuple1 = [(x,y,z) | x <- stops, y <- vowels, z <- stops]

    tuple2 = [(x,y,z) | x <- stops, y <- vowels, z <- stops, x == 'p']

    nouns = ["cat","house","wood","track"]
    verbs = ["ran","jump","meows","fly"]

    tuple3 = [(x,y,z) | x <- nouns, y <- verbs, z <- nouns]

    seekritFunc x =
        div (sum (map length (words x)))
           (length (words x))

    seekritimproved x = 
        (/) (fromIntegral (sum (map length (words x)))) 
           (fromIntegral (length (words x)))

    myAnd :: [Bool] -> Bool
    myAnd = foldr (&&) True

    myOr :: [Bool] -> Bool
    myOr = foldr (||) False

    myAny :: (a -> Bool) -> [a] -> Bool
    myAny f = foldr ((||) . f) False

    myAny1 f xs = foldr (\x acc -> (f x) || acc) False xs

    myElem x = foldr (\y acc -> y == x || acc) False
    myElem1 x = myAny ((==) x)
    
    myReverse :: [a] -> [a] 
    myReverse = foldl (flip (:)) []
   
    myMap :: Foldable t => (a -> b) -> t a -> [b]
    myMap f = foldr ((:) . f) []
  
    myFilter :: (a -> Bool) -> [a] -> [a] 
    myFilter f = foldr (\a b -> if f a then a : b else b) []

    squish = foldr (++) []

    squishMap f = squish . (myMap f)
    
    squishAgain = squishMap id

    myMaxBy f xs = foldr (\y acc -> if f y acc == GT then y else acc) (last xs) xs

    myMinBy f xs = foldr (\y acc -> if f y acc == GT then acc else y) (last xs) xs    

