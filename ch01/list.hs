main = do
    let lostNumbers = [4,8,15,16,23,42]
    print $ lostNumbers
    -- ++は最後まで走査するので遅い
    print $ [1,2,3,4] ++ [9,10,11,12]
    print $ "hello" ++ " " ++ "world"
    print $ ['w','o'] ++ ['o','t']
    print $ 'A' : "SMALL CAT"
    print $ 5 : [1,2,3,4,5]