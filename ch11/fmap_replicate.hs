{-# LANGUAGE NoMonomorphismRestriction #-}

main = do
    print $ fmap (replicate 3) [1,2,3,4]
    print $ fmap (replicate 3) (Just 4)
    -- ghciだと動く
    -- print $ fmap (replicate 3) (Right "blah")
    -- print $ fmap (replicate 3) Nothing
    -- print $ fmap (replicate 3) (Left "foo")
