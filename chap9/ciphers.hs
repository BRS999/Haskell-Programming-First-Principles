module Ciphers where 

    import Data.Char

    cipher :: [Char] -> [Int]
    cipher x = (map (+3) (map (ord) x))

    decipher :: [Int] -> [Char]
    decipher x = (map (chr)) (map (subtract 3) x)




