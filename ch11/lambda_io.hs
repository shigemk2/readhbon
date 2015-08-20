import Data.Char
import Data.List

main = do line <- fmap (\ xs -> intersperse '-' (reverse (map toUpper xs)))
                  getLine
          putStrLn line
