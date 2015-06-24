-- Haskellのreturnは他のプログラミング言語とは違う意味を持つ
main = do
    return ()
    return "HAHAHA"
    line <- getLine
    return "BLAH BLAH BLAH"
    return 4
    putStrLn line
