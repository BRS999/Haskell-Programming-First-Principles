
    {-# LANGUAGE GeneralizedNewtypeDeriving #-}
    {-# LANGUAGE FlexibleInstances #-}

module Goats where

    class TooMany a where 
        tooMany :: a -> Bool

    instance TooMany Int where
        tooMany n = n > 42
    
    newtype Goats = 
        Goats Int deriving (Eq, Show, TooMany)

    newtype Cow = 
        Cow (Int, String) deriving Show

    instance TooMany Cow where
        tooMany (Cow (n, _)) = n > 42

    newtype Tribe = -- A tribe of Goats
        Tribe (Int, Int) deriving (Eq, Show)

    instance TooMany Tribe where    
        tooMany (Tribe (x, y)) = x + y > 42

    instance (Num a, TooMany a) => TooMany (a, a) where
        tooMany (x , y) = tooMany $ x + y 

    