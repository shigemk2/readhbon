import qualified Data.Foldable as F

main = do
    print $ foldr (*) 1 [1,2,3]
    print $ F.foldr (*) 1 [1,2,3]

    print $ F.foldl (+) 2 (Just 9)
    print $ F.foldr (||) False (Just True)
