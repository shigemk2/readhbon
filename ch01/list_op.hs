main = do
    print $ head [5,4,3,2,1]
    print $ tail [5,4,3,2,1]
    print $ last [5,4,3,2,1]
    print $ init [5,4,3,2,1]
    -- print $ head []
    -- print $ tail []
    -- リストの長さを測る
    print $ length [1,2,3,4,5]
    -- リストが空かどうか判定する
    print $ null [1,2,3]
    print $ null []
