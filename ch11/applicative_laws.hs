import Control.Applicative

main = do
    -- pure id <*> v = v
    print $ pure id <*> Just 3
    print $ Just 3
    print $ (pure id <*> Just 3) == Just 3

    -- print $ pure (+) <*> Just 3 <*> Nothing
    -- print $ pure (+) <*> Nothing <*> Just 5

    -- print $ (++) <$> Just "johntra" <*> Just "volta"
    -- print $ (++) "johntra" "volta"
