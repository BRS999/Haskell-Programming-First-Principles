module Reading where 

    ifEvenAdd2 :: Integer -> Integer 
    ifEvenAdd2 n = if even n then n + 2 else n

    ifEvenAdd3 :: Integer -> Maybe Integer
    ifEvenAdd3 n = if even n then Just (n + 3) else Nothing

    type Name = String
    type Age = Integer

    data Person = Person Name Age deriving Show

    
    mkPerson :: Name -> Age -> Maybe Person 
    mkPerson name age
        | name /= "" && age >= 0 = Just $ Person name age 
        | otherwise = Nothing
    
    data PersonInvalid = NameEmpty
        | AgeTooLow
        deriving (Eq, Show)