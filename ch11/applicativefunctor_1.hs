main = do
    let a = fmap (*) [1,2,3,4]
    print $ fmap (\f -> f 9) a
    print $ fmap ($9) a
    print $ fmap ($3) a
    let b = fmap (++) (Just "hey")
    print $ fmap (\f -> f "hoge") b
    print $ fmap ($"hoge") b
    let c = fmap compare (Just 'b')
    print $ fmap ($'a') c
    print $ fmap ($'b') c
    print $ fmap ($'c') c
    print $ fmap (\f -> f 'c') c
    let d = fmap compare "A LIST OF CHARS"
    print $ fmap ($'A') d
    print $ fmap ($'B') d
    print $ fmap ($'C') d
    print $ fmap (\f -> f 'C') d
    -- let e = fmap (\x y z -> x + y / z) [3,4,5,6]
    -- print $ "hoge"
    -- print $ fmap (\x y z -> 1 2 3) e

