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

    isJust :: Maybe a -> Bool
    isJust Nothing = False
    isJust (Just _) = True

    isNothing :: Maybe a -> Bool
    isNothing = not . isJust

    mayybee :: b -> (a -> b) -> Maybe a -> b
    mayybee g f x =
        case x of
            Nothing -> g
            Just x -> f x

    listToMaybe :: [a] -> Maybe a
    listToMaybe [] = Nothing
    listToMaybe (x : _) = Just x

    maybeToList :: Maybe a -> [a]
    maybeToList Nothing = []
    maybeToList (Just x) = [x]

    -- Iteration 

    myIterate :: (a -> a) -> a -> [a]
    myIterate f a = a : (myIterate f (f a))
    
    myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
    myUnfoldr f x = 
        case (f x) of 
            Just (a , b) -> a : myUnfoldr f b
            Nothing -> []

    data BinaryTree a = 
        Leaf
      | Node (BinaryTree a) a (BinaryTree a) 
      deriving (Eq, Ord, Show)

    unfold :: (a -> Maybe (a,b,a)) -> a -> BinaryTree b
    unfold f x =
        case (f x) of 
            Nothing -> Leaf
            Just (a, b, c) -> Node (unfold f a) b (unfold f c)
