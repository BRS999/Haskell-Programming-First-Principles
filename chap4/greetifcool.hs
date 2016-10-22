module GreetIfCool where

    greetIfCool :: String -> IO()
    greetIfCool coolness =
        if cool coolness
            then putStrLn "shakin"
        else
            putStrLn "pssshhh"
        where cool v = v == "frosty"