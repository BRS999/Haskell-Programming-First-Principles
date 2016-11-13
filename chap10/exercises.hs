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