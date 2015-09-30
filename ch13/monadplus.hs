main = do
    print $ [ x | x <- [1..50], '7' `elem` show x ]
