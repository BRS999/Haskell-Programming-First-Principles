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

    -- Exercises: Thy Fearful Symmetry
    fun = "all i wanna do is have some fun"

    myWords :: String -> [String]
    myWords x
        | dropWhile (/=' ') x == "" = [x]
        | otherwise = (takeWhile (/=' ') x) : myWords(dropWhile (==' ') (dropWhile (/=' ') x))

    firstSen = "Tyger Tyger, burning bright\n" 
    secondSen = "In the forests of the night\n" 
    thirdSen = "What immortal hand or eye\n" 
    fourthSen = "Could frame thy fearful symmetry?" 
    sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen
  
  
    myLines :: String -> [String] 
    myLines x
        | dropWhile (/='\n') x == "" = [x]
        | otherwise = (takeWhile (/='\n') x) : myLines(dropWhile (=='\n') (dropWhile (/='\n') x))

    myline :: String -> Char -> [String] 
    myline x y
        | dropWhile (/=y) x == "" = [x]
        | otherwise = (takeWhile (/=y) x) : myLines(dropWhile (==y) (dropWhile (/=y) x))

    shouldEqual =
        [ "Tyger Tyger, burning bright"
        , "In the forests of the night"
        , "What immortal hand or eye"
        , "Could frame thy fearful symmetry?" ] 


    main :: IO ()
    main =
        print $ "Are they equal? " 
            ++ show (myLines sentences == shouldEqual)


    -- Exercises: Comprehend Thy Lists
    mySqr = [x^2 | x <- [1..5]]

    -- [x | x <- mySqr, rem x 2 == 0] = [4,16]

    -- [(x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50] = []

    -- take 5 [ (x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50 ] = []

    -- Exercises: Square Cube

    myCube = [y^3 | y <- [1..5]]

    mysc = [(x , y) | x <- mySqr, y <- myCube]

    mysc50 = [(x , y) | x <- mySqr, y <- myCube, x < 50, y < 50]

    -- use length


    -- Exercises: Bottom Madness
    -- 1 Bottomm, 2 [1], 3 B, 4 - 3, 5 B, 6 [2], 7 B, 8 [1], 9 [1,3], 10 B
    


    