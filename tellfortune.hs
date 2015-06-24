tellFortune :: String -> String
tellFortune n = n ++ " Good!!"

main = do
    putStrLn "Hello, what's your name?"
    name <- getLine
    putStrLn $ "Zis is your future: " ++ tellFortune name
