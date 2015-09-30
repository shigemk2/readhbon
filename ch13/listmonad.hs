main = do
    print $ (*) <$> [1,2,3] <*> [10,100,1000]
    print $ [3,4,5] >>= \x -> [x,-x]
    print $ [] >>= \x -> ["bad", "mad", "rad"]
    -- [1,2,3] >>= \x -> []
    -- 場合分けの木構造
    print $ [1,2] >>= \n -> ['a','b'] >>= \ch -> return (n, ch)
