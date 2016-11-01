module Reading where
        
        factorial :: Integer -> Integer
        factorial 0 = 1
        factorial n = n * factorial (n - 1)

        -- Maybe
        -- data Maybe a = Nothing | Just a

        fib :: (Num a, Num t, Eq a) => a -> t
        fib 0 = 0
        fib 1 = 1
        fib n = fib (n - 1) + fib (n - 2)

        -- Integral Division

        dividedby :: Integral a => a -> a -> (a , a)
        dividedby num dem = go num dem 0
                where go n d count
                        | n < d = (count, n)
                        | otherwise = go (n - d) d (count + 1)
 
