-- モナド値を連鎖させた式と等価なものを、ずっと簡潔に表せる記法が do 式

-- doを使わない書き方
foo1 :: Maybe String
foo1 = Just 3
      >>= ( \ x ->
            Just "!" >>= ( \ y ->
                           Just (show x ++ y)))

-- doを使った書き方
foo2 :: Maybe String
foo2 = do
    x <- Just 3
    y <- Just "!"
    Just (show x ++ y)

main = do
    print $ foo1
    print $ foo2
