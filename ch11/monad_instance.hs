import Control.Monad.Instances

main = do
    print $ fmap (*3) (+100) 1
    print $ (*3) `fmap` (+100) $ 1
    -- print $ (+100) `fmap` (*3) $ 1
    print $ (*3) . (+100) $ 1
    print $ fmap (show . (*3)) (+100) 1
    -- print $ fmap (*3) (show . (+100)) 1
