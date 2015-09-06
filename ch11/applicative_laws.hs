import Control.Applicative

main = do
    -- pure id <*> v = v
    print $ pure id <*> Just 3
    print $ Just 3
    print $ (pure id <*> Just 3) == Just 3
    -- pure (.) <*> u <*> v <*> w = u <*> (v <*> w)
    -- print $ pure (.) <*> [1,2,3] <*> [1,2,3] <*> [1,2,3]
    -- pure f <*> pure x = pure (f x)
    print $ pure (+3) <*> Just 3
    -- print $ pure ((+3) $ Just 3)
