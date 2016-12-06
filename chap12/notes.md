    treeBuild n = unfold go 0
        where go x = case x >= n of 
            True ->  Nothing
            False -> Just (x + 1, x, x + 1)

    treeBuild n = unfold f 0
        where
            f x
            | x == n =  Nothing
            | otherwise = Just ( x + 1, x, x + 1)