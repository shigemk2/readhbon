import Data.Monoid

main = do
    print $ LT `mappend` GT
    print $ GT `mappend` LT
    print $ mempty `mappend` LT
    print $ mempty `mappend` GT
