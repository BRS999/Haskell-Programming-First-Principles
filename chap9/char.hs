module Char where 

    import Data.Char
    -- isUpper :: Char -> Bool
    -- toUpper :: Char -> Char

    -- 2. 
    hello = "HasdfEfsLdfLfO"
    upper x = filter isUpper x

    cap :: String -> String
    cap (x : xs) = toUpper x : xs
    cap "" = ""

    capall :: String -> String
    capall (x : xs) = toUpper x : capall xs
    capall "" = ""