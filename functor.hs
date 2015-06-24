main = do
    print $ fmap (++ " HEY GUYS IM INSIDE THE JUST") (Just "Something serious.")
    print $ fmap (++ " HEY GUYS IM INSIDE THE JUST") Nothing
    print $ fmap (*2) (Just 200)
    print $ fmap (*2) Nothing
