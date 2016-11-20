module Scans where 

    fib 0 = 0
    fib 1 = 1
    fib x = fib(x - 1) + fib(x - 2)

    fibs = 1 : scanl (+) 1 fibs 
    fibsN x = fibs !! x

    fib20 = take 20 fibs

    fact = 1 : scanl (\acc x -> acc * (x + 1)) 2 fact

    fact1 = scanl (*) 1 [1..]

    
