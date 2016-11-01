module Exercises where
    
    -- 1, d

    f :: [[Bool]]
    f = [[True, False], [True, True], [False,True]]

    -- 2, b

    t :: [[Bool]]
    t = [[3 == 3], [6 > 5], [3 < 4]]

    -- 3, d

    funct :: [a] -> [a] -> [a]
    funct x y = x ++ y

    -- 4, b
    -- func "Hello" "World"

    -- Review Currying 

    cattyConny :: String -> String -> String 
    cattyConny x y = x ++ " mrow " ++ y

    flippy :: String -> String -> String
    flippy = flip cattyConny

    appedCatty :: String -> String
    appedCatty = cattyConny "woops"

    frappe :: String -> String
    frappe = flippy "haha"

    -- 1 "woops mrow woohoo"
    -- 2 "1 mrow haha"
    -- 3 "woops mrow 2" "mrow" "haha"
    -- 4 "woops mrow blue mrow haha"
    -- 5 "pink mrow haha mrow green mrow woops mrow blue"
    -- 6 "are mrow Pugs mrow awesome"

    -- Recursion

    -- 1.1 15 2 0
    -- 1.2 13 2 1
    -- 1.3 11 2 2
    -- 1.4 9  2 3
    -- 1.5 7  2 4
    -- 1.6 5  2 5
    -- 1.7 3  2 6
    -- 1.8 1  2 7
    -- 1.9 (7,1)

    -- 2
    addnums :: (Num t, Eq t) => t -> t
    addnums 1 = 1
    addnums n = n + addnums(n - 1)

    -- 3
    recursivesum :: (Num t1, Num t, Eq t) => t1 -> t -> t1
    recursivesum x y = go x y 0
        where go x y sum
                | y == 0 = sum
                | otherwise = go x (y - 1) (sum + x)

    -- McCarthy 
    mc91 :: (Ord t, Num t) => t -> t
    mc91 n = rec n
        where rec n
                | n > 100 = n - 10
                | otherwise = rec(rec(n + 11))