module Curry where

    ex :: String -> String
    ex x = x ++ "!"

    tak :: String -> Char
    tak x = x !! 3
    
    dr :: String -> String
    dr x = drop 3 x

    letter :: Int -> Char
    letter x = "Curry is awesome!" !! x

    rvrs :: String
    one = drop 9 "Curry is awesome"
    two = take 5 "Curry is awesome"
    three = take 4 $ drop 5 "Curry is awesome"
    rvrs = one ++ three ++ two


