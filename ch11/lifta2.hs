import Control.Applicative

main = do
    print $ fmap (\x -> [x]) (Just 4)
    print $ 3 : [4]
    print $ [1,2,3] ++ [4]
    -- Just 3 と Just [4] があります。ここから Just [3,4]を作る
    -- 持ち上げ
    print $ liftA2 (:) (Just 3) (Just [4])
    print $ (:) <$> Just 3 <*> Just [4]
    print $ liftA2 (++) (Just [1,2]) (Just [3,4])
    print $ (++) <$> Just [1,2] <*> Just [3,4]
