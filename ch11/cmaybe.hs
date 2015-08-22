data CMaybe a = CNothing | CJust Int a deriving (Show)

main = do
    -- print $ CNothing
    print $ CJust 0 "haha"
    print $ CJust 100 [1,2,3]
