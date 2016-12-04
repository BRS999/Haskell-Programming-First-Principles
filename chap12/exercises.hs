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

    vowels = "aeiou"
    consonants = "qwrtypsdfghjklzxcvbnm"

    countVowels :: String -> Int
    countVowels x = length $ filter (`elem` vowels) x

    countConsonants :: String -> Int
    countConsonants x = length $ filter (`elem` consonants) x
    
    newtype Word' = 
        Word' String 
        deriving (Eq, Show)

    mkWord :: String -> Maybe Word' 
    mkWord x 
       | countConsonants x > countVowels x = Just $ Word' x
       | otherwise = Nothing