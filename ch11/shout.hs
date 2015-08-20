{-# LANGUAGE NoMonomorphismRestriction #-}

main = do
    let shout = fmap (++"!")
    print $ shout ["ha","ka","ta","no"]
