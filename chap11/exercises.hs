module Exercises where 

    import Data.Int
    import Data.Char (toUpper)

    data DogueDeBordeaux doge = DogueDeBordeaux doge
    data Doggies a = Husky a | Mastiff a deriving (Eq, Show)

    -- Exercises: Dog Types
    -- 1. Type Constructor 
    -- 2. * -> *
    -- 3. * 
    -- 4. Num a => Doggies a
    -- 5. Husky (10 :: Integer) :: Doggies Integer
    -- 6. Mastiff "Scooby Doo" :: Doggies [Char]
    -- 7. data DogueDeBordeaux doge = DogueDeBordeaux doge ) first type, second data
    -- 8. DogueDeBordeaux :: doge -> DogueDeBordeaux doge
    -- 9. DogueDeBordeaux "doggie!" :: DogueDeBordeaux [Char]

    data Price = Price Integer deriving (Eq, Show)
    data Size = Size Integer deriving (Eq, Show)
    data Manufacturer = Mini | Mazda | Tata deriving (Eq, Show)
    data Airline = PapuAir | CatapultsR'Us | TakeYourChancesUnited deriving (Eq, Show)
    data Vehicle = Car Manufacturer Price | Plane Airline Size deriving (Eq, Show)

    myCar = Car Mini (Price 14000) 
    urCar = Car Mazda (Price 20000) 
    clownCar = Car Tata (Price 7000) 
    doge = Plane PapuAir (Size 10000)

    -- Exercises: Vehicles
    -- 1. myCar :: Vehicle

    isCar :: Vehicle -> Bool
    isCar (Car _ _) = True
    isCar _         = False

    isPlane :: Vehicle -> Bool
    isPlane (Plane _ _) = True
    isPlane _          = False 
    
    areCars :: [Vehicle] -> [Bool]
    areCars = map isCar
   
    getManu :: Vehicle -> Manufacturer 
    getManu (Car x _ ) = x

    getPrice :: Vehicle -> Price 
    getPrice (Car _ x ) = x

    -- 4. Won't work

    -- Exercises: Cardinality

    -- 1. One
    -- 2. 3
    -- 3. length [-32768..32767] 65536      
    -- 4. minBound :: Int -9223372036854775808 | Integer is not bounded
    -- 5. 2 ^ 8

    data Example = MakeExample deriving Show
    -- Exercises: For Example
    -- MakeExample :: Example | Data Constructor not in scope
    -- data Example = MakeExample | Show 

    data Example2 = MakeExample2 Int deriving Show
    -- MakeExample2 :: Int -> Example2

    newtype Goats = Goats Int deriving (Eq, Show)
    newtype Cows = Cows Int deriving (Eq, Show)

    tooManyGoats :: Goats -> Bool
    tooManyGoats (Goats n) = n > 42

    class TooMany a where
        tooMany :: a -> Bool

    instance TooMany Int where
        tooMany n = n > 42


    data OperatingSystem =
        GnuPlusLinux
        | OpenBSDPlusNevermindJustBSDStill 
        | Mac
        | Windows
        deriving (Eq, Show)
    
    allOperatingSystems :: [OperatingSystem] 
   
    allOperatingSystems =
        [ GnuPlusLinux
        , OpenBSDPlusNevermindJustBSDStill 
        , Mac
        , Windows
        ]
      
    data ProgrammingLanguage =
        Haskell
        | Agda
        | Idris
        | PureScript 
        deriving (Eq, Show)

    allLanguages :: [ProgrammingLanguage] 
    allLanguages = [Haskell, Agda, Idris, PureScript]


    data Programmer = 
        Programmer { os :: OperatingSystem
                    , lang :: ProgrammingLanguage } 
        deriving (Eq, Show)


    allProgrammers :: [Programmer] 
    allProgrammers = [Programmer { os = os, lang = lang} | os <- allOperatingSystems, lang <- allLanguages]

    -- Chapter Exercises 
    -- 1. a     2. c    3. b    4. c

    isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
    isSubsequenceOf [] _ = True
    isSubsequenceOf _ [] = False
    isSubsequenceOf s@(x : xs) (y : ys) 
        | x == y        = isSubsequenceOf xs ys
        | otherwise     = isSubsequenceOf s ys

    capitalizeWord :: String -> String
    capitalizeWord [] = []
    capitalizeWord (x : xs) =  toUpper x : xs

    capitalizeWords :: String -> [(String, String)]
    capitalizeWords = map (\x -> (x , capitalizeWord x)) . words

    -- Huttons Razor

    data Expr
       = Lit Integer
       | Add Expr Expr

    eval :: Expr -> Integer 
    eval (Lit n) = n
    eval (Add a b) = eval a + eval b

    printExpr :: Expr -> String
    printExpr (Lit n) = show n
    printExpr (Add a b) = printExpr a ++ " + " ++ printExpr b