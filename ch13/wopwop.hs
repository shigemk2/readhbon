-- do 式の中でパターンマッチが失敗した場合、 Monad 型クラスの一員であるfail 関数が使われる
wopwop :: Maybe Char
wopwop = do
    (x:xs) <- Just ""
    return x

main = do
    print $ Just "Hello" >>= \(x:xs) -> Just x
    -- Non-exhaustive patterns in lambda
    -- failのデフォルト実装だと死ぬ
    -- print $ Just "" >>= \(x:xs) -> Just x
    print $ wopwop
