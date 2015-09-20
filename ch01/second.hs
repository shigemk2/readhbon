main = do
    print $ True && False
    print $ True && True
    print $ False || True
    print $ not False
    print $ not (True && False)
    print $ 5 /= 5
    print $ 5 /= 4
    print $ "hello" == "hello"
    -- ===は存在しない
    -- print $ "hello" === "hello"
    -- No instance for (Num [Char]) arising from a use of ‘+’
    -- print $ 5 + "llama"
