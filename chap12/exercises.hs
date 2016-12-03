module Exercises where 

    id :: a -> a 
    id x = x 
    -- :k * 

    r :: a -> f a
    r = undefined 
    -- a * and f * -> *

    replaceThe :: String -> String
    replaceThe = unwords . map noThe . words
      where
       noThe "the" = "a"
       noThe a = a

    countThes :: String -> Int
    countThes = length . filter (== "the") . words

    countVowels :: String -> Int
    countVowels x = length $ filter (`elem` "aeiou") x

    
