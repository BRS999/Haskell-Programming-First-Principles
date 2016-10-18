module Tis where 
    data TisAnInteger =
        TisAn Integer
    instance Eq TisAnInteger where
        TisAn x == TisAn y = x == y

    data TwoIntegers = Two Integer Integer deriving Show
    instance Eq TwoIntegers where
        Two x y == Two x' y' = x == x' && y == y'

    data StringOrInt =
        TisAnInt    Int
        |TisAString  String

    instance Eq StringOrInt where
        TisAnInt x == TisAnInt y = x == y
        TisAString str == TisAString str' = str == str'
        _ == _ = False

    data Pair a = Pair a a
    instance Eq a => Eq (Pair a) where
        Pair x y == Pair x' y' = x == y && x' == y'

    data Tuple a b = Tuple a b
    instance (Eq a, Eq b) => Eq (Tuple a b ) where
        Tuple x y == Tuple x' y' = x == x' && y == y'

    data Which a = 
        ThisOne a 
        |ThatOne a

    instance Eq a => Eq (Which a) where
        ThisOne x == ThisOne x' = x == x'
        ThatOne x == ThatOne x' = x == x'
        _ == _ = False

    data Which' a =
        ThisOne' a
        | ThatOne' a
        deriving Eq

    data EitherOr a b =
        Hello a
        | Goodbye b

    instance (Eq a, Eq b) => Eq (EitherOr a b) where
        Hello x == Hello x' = x == x'
        Goodbye x == Goodbye x' = x == x'
        _ == _ = False


    data Person = Person Bool deriving Show
    printperson :: Person -> IO ()
    printperson person = putStrLn (show person)

    data Mood = Blah
        | Woot deriving Show

    instance Eq Mood where
        Blah == Blah = True
        Woot == Woot = True
        _ == _ = False
    
    settledown x = if x == Blah then Blah else x

    type Subject = String
    type Verb = String
    type Object = String

    data Sentence = Sentence Subject Verb Object

        deriving (Show, Eq)

    s1 = Sentence "dogs" "drool"
    s2 = Sentence "Julie" "loves" "dogs"

    -- what is chk ??
    chk :: Eq b => (a -> b) -> a -> b -> Bool

    
