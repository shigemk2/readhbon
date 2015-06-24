main = do
    foo <- putStrLn "Hello, what's your name?"
    name <- getLine
    -- 1
    -- こういう書き方は出来ないなぜなら戻り値I/Oを返さないといけないから
    -- _ <- putStrLn ("Hey " ++ name ++ ", you rock!")
    -- 2
    x <- putStrLn ("Hey " ++ name ++ ", you rock!")
    return x
