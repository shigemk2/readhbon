type IntList = [Int]

main = do
    print $ ([1,2,3] :: IntList) ++ ([1,2,3] :: [Int])
