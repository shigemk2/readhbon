import Control.Applicative

main = do
    -- pure id <*> v = v
    print $ pure id <*> [1,2,3]
    print $ [1,2,3]
    print $ (pure id <*> [1,2,3]) == [1,2,3]
    -- pure (.) <*> u <*> v <*> w = u <*> (v <*> w)
    -- print $ pure (.) <*> [1,2,3] <*> [1,2,3] <*> [1,2,3]
    -- pure f <*> pure x = pure (f x)
    pure sum <*> pure [1,2,3]
    print $ pure (sum [1,2,3])
    -- print $ pure ((+3) $ Just 3)
    -- u <*> pure y = pure ($ y) <*> u
    -- print $ pure $ Just 4
