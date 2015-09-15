import Control.Applicative

main = do
    print $ [(+1), (*100), (*5)] <*> [1,2,3]
