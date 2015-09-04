import Control.Applicative

main = do
    print $ Just (+3) <*> Just 9
    print $ pure (+3) <*> Just 10
    print $ pure (+3) <*> Just 9
    print $ Just (++"hahah") <*> Nothing
    -- print $ Nothing <*> Just "woot"
