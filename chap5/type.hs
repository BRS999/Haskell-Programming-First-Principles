module Type where

    data A
    data C
    data B

    q :: A -> B; q = undefined
    w :: B -> C; w = undefined
    h :: A -> C;
    h x = w $ q x

    munge :: (x -> y) -> (y -> (w, z)) -> x -> w
    munge f g x = fst (g (f x))
    