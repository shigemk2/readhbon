main = do
    -- こういう書き方はダメ
    -- a <- "hell"
    -- b <- "yeah!"
    -- 箱にするのがreturn
    -- 箱の中身を取り出して束縛するのが<-
    a <- return "hell"
    b <- return "yeah!"
    putStrLn $ a ++ " " ++ b
