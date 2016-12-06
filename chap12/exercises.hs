module Exercises where 

    id :: a -> a 
    id x = x 
    -- :k * 

    r :: a -> f a
    r = undefined 
    -- a * and f * -> *

    notThe :: String -> Maybe String
    notThe "the" = Nothing
    notThe x = Just x

    replaceThe :: String -> String
    replaceThe = unwords . map noThe . words
      where
       noThe "the" = "a"
       noThe a = a

   -- replaceThe' = unwords . map ((maybe "a" id) . notThe) . words

    countThes :: String -> Int
    countThes = length . filter (== "the") . words

    vowels = "aeiou"

    isVowel :: Char -> Bool
    isVowel = (`elem` vowels)

    isConsonants :: Char -> Bool
    isConsonants c = not $ isVowel c

    countVowels :: String -> Int
    countVowels x = length $ filter isVowel x

    countConsonants :: String -> Int
    countConsonants x = length $ filter isConsonants x

    newtype Word' = 
        Word' String 
        deriving (Eq, Show)

    mkWord :: String -> Maybe Word' 
    mkWord x 
       | countConsonants x > countVowels x = Just $ Word' x
       | otherwise = Nothing

    catMaybes :: [Maybe a] -> [a]   
    catMaybes ls = [ x | Just x <- ls]

    isJust :: Maybe a -> Bool
    isJust Nothing = False
    isJust (Just _) = True

    isNothing :: Maybe a -> Bool
    isNothing = not . isJust

    flipMaybe :: [Maybe a] -> Maybe [a]
    flipMaybe xs = if any isNothing xs then Nothing else Just 
        (catMaybes xs)

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

    betterIterate f x = myUnfoldr g x
        where g y = Just (y, (f y))

    data BinaryTree a = 
        Leaf
      | Node (BinaryTree a) a (BinaryTree a) 
      deriving (Eq, Ord, Show)

    unfold :: (a -> Maybe (a,b,a)) -> a -> BinaryTree b
    unfold f x =
        case (f x) of 
            Nothing -> Leaf
            Just (a, b, c) -> Node (unfold f a) b (unfold f c)

