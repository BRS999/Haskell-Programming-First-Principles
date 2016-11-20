module Exercises where 

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
    data Manufacturer = Mini | Mazda | Tata deriving (Eq, Show)
    data Airline = PapuAir | CatapultsR'Us | TakeYourChancesUnited deriving (Eq, Show)
    data Vehicle = Car Manufacturer Price | Plane Airline deriving(Eq, Show)

    myCar = Car Mini (Price 14000) 
    urCar = Car Mazda (Price 20000) 
    clownCar = Car Tata (Price 7000) 
    doge = Plane PapuAir

    -- Exercises: Vehicles
    -- 1. myCar :: Vehicle

    isCar :: Vehicle -> Bool
    isCar (Car _ _) = True
    isCar _         = False

    isPlane :: Vehicle -> Bool
    isPlane (Plane _ ) = True
    isPlane _          = False 
    
    areCars :: [Vehicle] -> [Bool]
    areCars = map isCar
   
    getManu :: Vehicle -> Manufacturer 
    getManu (Car x _ ) = x

    getPrice :: Vehicle -> Price 
    getPrice (Car _ x ) = x