-- オレオレバインド(>>=)の実装
applyMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
applyMaybe Nothing f = Nothing
applyMaybe (Just x) f = f x

main = do
    print $ Just 3 `applyMaybe` \ x -> Just (x+1)
    print $ Just "smile" `applyMaybe` \ x -> Just (x ++ " :)")
    print $ Nothing `applyMaybe` \ x -> Just (x+1)
    print $ Nothing `applyMaybe` \ x -> Just (x ++ " :)")
