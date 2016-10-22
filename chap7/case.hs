module Case where 

    funcZ x =
        case x + 1 == 1 of
            True -> "Awesome"
            False -> "Wut"

    pal x =
        case x == reverse x of
            True -> "yes"
            False -> "no"

    pal' xs =
        case y of 
            True -> True
            False -> False
        where y = xs == reverse xs