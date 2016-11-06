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