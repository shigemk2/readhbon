import Control.Applicative

main = do
    print $ pure (+) <*> Just 3 <*> Just 5
    print $ pure (+) <*> Just 3 <*> Nothing
    print $ pure (+) <*> Nothing <*> Just 5
