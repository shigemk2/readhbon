import Data.Monoid

main = do
    print $ Nothing `mappend` Just "andy"
    print $ Just LT `mappend` Nothing
    print $ Just (Sum 3) `mappend` Just (Sum 4)
    print $ getFirst $ First (Just 'a') `mappend` First (Just 'b')
    print $ getFirst $ First Nothing `mappend` First (Just 'b')
    print $ getFirst $ First (Just 'a') `mappend` First Nothing
    print $ getFirst . mconcat . map First $ [Nothing, Just 9, Just 10]
    print $ getLast . mconcat . map Last $ [Nothing, Just 9, Just 10]
    print $ getLast $ Last (Just "one") `mappend` Last (Just "two")
    -- 先のほうの引数を優先
    print $ First (Just "one") `mappend` First (Just "two")
    -- 後のほうの引数を優先
    print $ Last (Just "one") `mappend` Last (Just "two")
