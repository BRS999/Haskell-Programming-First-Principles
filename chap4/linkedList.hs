data List a = EmptyList | ListElement a (List a) deriving Show
xs = ListElement 1 (ListElement 2 (ListElement 3 (EmptyList)))
