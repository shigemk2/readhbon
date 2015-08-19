import Data.Monoid

-- instance Monoid [a] where
--     mempty = []
--     mappend = (++)

main = do
    print $ [1,2,3] `mappend` [4,5,6]
    print $ ("one" `mappend` "two") `mappend` "tree"
    print $ "one" `mappend` ("two" `mappend` "tree")
    print $ "one" `mappend` "two" `mappend` "tree"
    print $ "pang" `mappend` mempty
    print $ mconcat [[1,2],[3,6],[9]]
    -- print $ mempty :: [a]
