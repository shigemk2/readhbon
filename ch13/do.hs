main = do
    print $ Just 3 >>= ( \ x -> Just (show x ++ "!"))
    print $ Just 3 >>= ( \ x -> Just "!" >>= ( \ y -> Just (show x ++ y)))
    -- print $ Nothing >>= ( \ x -> Just "!" >>= ( \ y -> Just (show x ++ y)))
    -- print $ Just 3 >>= ( \ x -> Just "!" >>= ( \ y -> Nothing))
    -- Just 3 >>= ( \ x -> Just "!" >>= ( \ y -> Nothing))
