wopwop :: Maybe Char
wopwop = do
    (x:xs) <- Just ""
    return x

main = do
    print $ wopwop
