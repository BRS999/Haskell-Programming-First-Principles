data Mood = Bleh {} | Woot deriving Show

changeMood Woot = Bleh
changeMood Bleh = Woot