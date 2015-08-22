main = do
    print $ fmap id (Just 3)
    print $ id (Just 3)
    print $ fmap id [1..5]
    print $ id [1..5]
    -- print $ fmap id []
    -- print $ fmap id Nothing
