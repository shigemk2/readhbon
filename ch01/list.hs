main = do
    let lostNumbers = [4,8,15,16,23,42]
    print $ lostNumbers
    -- ++は最後まで走査するので遅い
    print $ [1,2,3,4] ++ [9,10,11,12]
    print $ "hello" ++ " " ++ "world"
    print $ ['w','o'] ++ ['o','t']
    -- 最初に追加するぶんにはこのほうが早い
    print $ 'A' : "SMALL CAT"
    print $ 5 : [1,2,3,4,5]
    -- 最後の追加はこういうふうに囲む
    print $ [1,2,3,4] ++ [5]
    -- こういうふうにはかけない
    -- print $ [1,2,3,4] ++ 5
    -- リストの中へのアクセス
    print $ "Steve Buscemi" !! 6
    print $ [9.4, 33.2, 96.2, 11.2, 23.25] !! 1
